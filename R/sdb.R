sdb.batch.delete.attributes <- function (domain.name=NULL,items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sdb batch-delete-attributes",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(items),paste("--items",items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sdb.batch.put.attributes <- function (domain.name=NULL,items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sdb batch-put-attributes",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(items),paste("--items",items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sdb.create.domain <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sdb create-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sdb.delete.attributes <- function (domain.name=NULL,item.name=NULL,attributes=NULL,expected=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sdb delete-attributes",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(item.name),paste("--item-name",item.name),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(expected),paste("--expected",expected),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sdb.delete.domain <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sdb delete-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sdb.domain.metadata <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sdb domain-metadata",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sdb.get.attributes <- function (domain.name=NULL,item.name=NULL,attribute.names=NULL,consistent.read=FALSE,no.consistent.read=FALSE,cli.input.json=NULL) {
    if(consistent.read && no.consistent.read) stop("please set either consistent.read or no.consistent.read")
    cmd <- paste("aws sdb get-attributes",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(item.name),paste("--item-name",item.name),""),
                 ifelse(!is.null(attribute.names),paste("--attribute-names",attribute.names),""),
                 ifelse(consistent.read,"--consistent-read",""),
                 ifelse(no.consistent.read,"--no-consistent-read",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sdb.list.domains <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws sdb list-domains",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
sdb.put.attributes <- function (domain.name=NULL,item.name=NULL,attributes=NULL,expected=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sdb put-attributes",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(item.name),paste("--item-name",item.name),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(expected),paste("--expected",expected),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sdb.select <- function (select.expression=NULL,consistent.read=FALSE,no.consistent.read=FALSE,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    if(consistent.read && no.consistent.read) stop("please set either consistent.read or no.consistent.read")
    cmd <- paste("aws sdb select",
                 ifelse(!is.null(select.expression),paste("--select-expression",select.expression),""),
                 ifelse(consistent.read,"--consistent-read",""),
                 ifelse(no.consistent.read,"--no-consistent-read",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
