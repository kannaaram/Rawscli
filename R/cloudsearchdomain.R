cloudsearchdomain.search <- function (cursor=NULL,expr=NULL,facet=NULL,filter.query=NULL,highlight=NULL,partial=FALSE,no.partial=FALSE,query.options=NULL,query.parser=NULL,return=NULL,size=NULL,sort=NULL,start=NULL,search.query=NULL,cli.input.json=NULL) {
    if(partial && no.partial) stop("please set either partial or no.partial")
    cmd <- paste("aws cloudsearchdomain search",
                 ifelse(!is.null(cursor),paste("--cursor",cursor),""),
                 ifelse(!is.null(expr),paste("--expr",expr),""),
                 ifelse(!is.null(facet),paste("--facet",facet),""),
                 ifelse(!is.null(filter.query),paste("--filter-query",filter.query),""),
                 ifelse(!is.null(highlight),paste("--highlight",highlight),""),
                 ifelse(partial,"--partial",""),
                 ifelse(no.partial,"--no-partial",""),
                 ifelse(!is.null(query.options),paste("--query-options",query.options),""),
                 ifelse(!is.null(query.parser),paste("--query-parser",query.parser),""),
                 ifelse(!is.null(return),paste("--return",return),""),
                 ifelse(!is.null(size),paste("--size",size),""),
                 ifelse(!is.null(sort),paste("--sort",sort),""),
                 ifelse(!is.null(start),paste("--start",start),""),
                 ifelse(!is.null(search.query),paste("--search-query",search.query),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearchdomain.suggest <- function (suggester=NULL,size=NULL,suggest.query=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearchdomain suggest",
                 ifelse(!is.null(suggester),paste("--suggester",suggester),""),
                 ifelse(!is.null(size),paste("--size",size),""),
                 ifelse(!is.null(suggest.query),paste("--suggest-query",suggest.query),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearchdomain.upload.documents <- function (documents=NULL,content.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearchdomain upload-documents",
                 ifelse(!is.null(documents),paste("--documents",documents),""),
                 ifelse(!is.null(content.type),paste("--content-type",content.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
