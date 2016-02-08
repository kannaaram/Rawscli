#!/usr/bin/Rscript

require(methods)

args <- commandArgs(trailingOnly=TRUE)
if(length(args)!=4) stop("Need arguments: SERVICE CMD parameter.file output.file")

SERVICE <- args[1]
CMD <- args[2]
parameter.file <- args[3]
output.file <- args[4]

con <- file(parameter.file, "r", blocking = FALSE)
params <- readLines(con)
close(con)

do.either.or.check <- function(args) {
    stopifnot(length(args)==2)
    sprintf("if(%s && %s) stop(\"please set either %s or %s\")",args[1],args[2],args[1],args[2])
}

generate.error.checking <- function(param.list) {
    ## no error checking for either/or value types
    either.or <- grepl("\\|",param.list) & (!grepl("<value>",param.list))
    if(any(either.or)) {
        ans <- lapply(param.list[either.or],function(param) {
            args <- gsub(" ","",unlist(strsplit(param,"\\|")))
            rargs <- gsub("-",".",args)
            do.either.or.check(rargs)
        })
    } else {
        ans <- list()
    }
    ans
}

generate.fun <- function(service,cmd,param.list) {
    error.checking <- generate.error.checking(param.list)
    param.list <- unlist(lapply(param.list,strsplit,split="\\|"))
    param.list <- gsub("^ ","",param.list)
    param.list <- gsub(" $","",param.list)
    value.type <- grepl("<value>",param.list)

    formals <- list()
    aws.call <- list()

    for(i in 1:length(param.list)) {
        param <- param.list[i]
        if(value.type[i]) {
            args <- gsub(" <value>.*$","",param)
            rargs <- gsub("-",".",args)
            formals[[length(formals)+1]] <- paste(rargs[1],"NULL",sep="=")
            aws.call[[length(aws.call)+1]] <- sprintf("ifelse(!is.null(%s),paste(\"--%s\",%s),\"\")",rargs[1],args[1],rargs[1])
        } else {
            args <- param
            rargs <- gsub("-",".",args)
            formals[[length(formals)+1]] <- paste(rargs[1],"FALSE",sep="=")
            aws.call[[length(aws.call)+1]] <- sprintf("ifelse(%s,\"--%s\",\"\")",rargs[1],args[1])
        }
    }

    function.name <- paste(service,gsub("-",".",cmd),sep=".")
    function.formals <- sprintf("(%s)",paste(formals,collapse=","))

    aws.cmd <- sprintf("\"%s %s %s\"","aws",service, cmd)
    aws.cmd.with.params <- sprintf("cmd <- paste(%s,\n%s)",aws.cmd, paste(aws.call,collapse=",\n"))

    function.body <- paste(c(unlist(error.checking),aws.cmd.with.params,"system(cmd,intern=TRUE)"),collapse="\n")
    paste(function.name,"<- function",function.formals,"{\n",function.body,"\n}\n",collapse="\n")
    ##fromJSON(paste(x,collapse=""))
}

fun <- generate.fun(SERVICE,CMD,params)
cat(fun,file=output.file,append=TRUE)
