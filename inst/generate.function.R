#!/usr/bin/Rscript

require(methods)

args <- commandArgs(trailingOnly=TRUE)
if(length(args)!=2) stop("Need arguments: parameter.file output.file")

parameter.file <- args[1]
output.file <- args[2]

con <- file(parameter.file, "r", blocking = FALSE)
params <- readLines(con)
close(con)

do.either.or.check <- function(args) {
    stopifnot(length(args)==2)
    sprintf("if(%s && %s) stop(\"please set either %s or %s\")",args[1],args[2],args[1],args[2])
}

generate.fun <- function(service,cmd,param.list) {
    either.or <- grepl("\\|",param.list)
    value.type <- grepl("<value>",param.list)
    normal.boolean <- !(either.or||value.type)

    ##formals <- gsub(" ","",gsub("<value>","",unlist(strsplit(params,"\\|"))))
    formals <- list()
    error.checking <- list()
    aws.call <- list()

    for(i in 1:length(param.list)) {
        param <- param.list[i]
        if(either.or[i]) {
            args <- gsub(" ","",unlist(strsplit(param,"\\|")))
            rargs <- gsub("-",".",args)
            error.checking[[length(error.checking)+1]] <- do.either.or.check(rargs)
            formals[[length(formals)+1]] <- paste(rargs[1],"FALSE",sep="=")
            formals[[length(formals)+1]] <- paste(rargs[2],"FALSE",sep="=")
            aws.call[[length(aws.call)+1]] <- sprintf("ifelse(%s,\"--%s\",\"\")",rargs[1],args[1])
            aws.call[[length(aws.call)+1]] <- sprintf("ifelse(%s,\"--%s\",\"\")",rargs[2],args[2])
        }
        if(value.type[i]) {
            args <- gsub(" <value>$","",param)
            rargs <- gsub("-",".",args)
            formals[[length(formals)+1]] <- paste(rargs[1],"NULL",sep="=")
            aws.call[[length(aws.call)+1]] <- sprintf("ifelse(!is.null(%s),paste(\"--%s\",%s),\"\")",rargs[1],args[1],rargs[1])
        }
        if(normal.boolean) {
            formals[[length(formals)+1]] <- paste(rargs[1],"FALSE",sep="=")
            aws.call[[length(aws.call)+1]] <- sprintf("ifelse(%s,--%s,\"\")",rargs[1],args[1])
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

service.cmd <- strsplit(basename(parameter.file),"\\.")
SERVICE <- service.cmd[[1]][1]
CMD <- service.cmd[[1]][2]

fun <- generate.fun(SERVICE,CMD,params)
cat(fun,file=output.file,append=TRUE)
