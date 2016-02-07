cloudsearch.build.suggesters <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch build-suggesters",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.create.domain <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch create-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.define.analysis.scheme <- function (domain.name=NULL,analysis.scheme=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch define-analysis-scheme",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(analysis.scheme),paste("--analysis-scheme",analysis.scheme),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.define.expression <- function (domain.name=NULL,expression=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch define-expression",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(expression),paste("--expression",expression),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.define.index.field <- function (domain.name=NULL,name=NULL,type=NULL,default.value=NULL,facet.enabled=NULL,search.enabled=NULL,return.enabled=NULL,sort.enabled=NULL,highlight.enabled=NULL,analysis.scheme=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch define-index-field",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(default.value),paste("--default-value",default.value),""),
                 ifelse(!is.null(facet.enabled),paste("--facet-enabled",facet.enabled),""),
                 ifelse(!is.null(search.enabled),paste("--search-enabled",search.enabled),""),
                 ifelse(!is.null(return.enabled),paste("--return-enabled",return.enabled),""),
                 ifelse(!is.null(sort.enabled),paste("--sort-enabled",sort.enabled),""),
                 ifelse(!is.null(highlight.enabled),paste("--highlight-enabled",highlight.enabled),""),
                 ifelse(!is.null(analysis.scheme),paste("--analysis-scheme",analysis.scheme),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.define.suggester <- function (domain.name=NULL,suggester=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch define-suggester",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(suggester),paste("--suggester",suggester),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.delete.analysis.scheme <- function (domain.name=NULL,analysis.scheme.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch delete-analysis-scheme",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(analysis.scheme.name),paste("--analysis-scheme-name",analysis.scheme.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.delete.domain <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch delete-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.delete.expression <- function (domain.name=NULL,expression.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch delete-expression",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(expression.name),paste("--expression-name",expression.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.delete.index.field <- function (domain.name=NULL,index.field.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch delete-index-field",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(index.field.name),paste("--index-field-name",index.field.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.delete.suggester <- function (domain.name=NULL,suggester.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch delete-suggester",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(suggester.name),paste("--suggester-name",suggester.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.describe.analysis.schemes <- function (domain.name=NULL,analysis.scheme.names=NULL,deployed=FALSE,no.deployed=FALSE,cli.input.json=NULL) {
    if(deployed && no.deployed) stop("please set either deployed or no.deployed")
    cmd <- paste("aws cloudsearch describe-analysis-schemes",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(analysis.scheme.names),paste("--analysis-scheme-names",analysis.scheme.names),""),
                 ifelse(deployed,"--deployed",""),
                 ifelse(no.deployed,"--no-deployed",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.describe.availability.options <- function (domain.name=NULL,deployed=FALSE,no.deployed=FALSE,cli.input.json=NULL) {
    if(deployed && no.deployed) stop("please set either deployed or no.deployed")
    cmd <- paste("aws cloudsearch describe-availability-options",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(deployed,"--deployed",""),
                 ifelse(no.deployed,"--no-deployed",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.describe.domains <- function (domain.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch describe-domains",
                 ifelse(!is.null(domain.names),paste("--domain-names",domain.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.describe.expressions <- function (domain.name=NULL,expression.names=NULL,deployed=FALSE,no.deployed=FALSE,cli.input.json=NULL) {
    if(deployed && no.deployed) stop("please set either deployed or no.deployed")
    cmd <- paste("aws cloudsearch describe-expressions",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(expression.names),paste("--expression-names",expression.names),""),
                 ifelse(deployed,"--deployed",""),
                 ifelse(no.deployed,"--no-deployed",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.describe.index.fields <- function (domain.name=NULL,field.names=NULL,deployed=FALSE,no.deployed=FALSE,cli.input.json=NULL) {
    if(deployed && no.deployed) stop("please set either deployed or no.deployed")
    cmd <- paste("aws cloudsearch describe-index-fields",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(field.names),paste("--field-names",field.names),""),
                 ifelse(deployed,"--deployed",""),
                 ifelse(no.deployed,"--no-deployed",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.describe.scaling.parameters <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch describe-scaling-parameters",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.describe.service.access.policies <- function (domain.name=NULL,deployed=FALSE,no.deployed=FALSE,cli.input.json=NULL) {
    if(deployed && no.deployed) stop("please set either deployed or no.deployed")
    cmd <- paste("aws cloudsearch describe-service-access-policies",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(deployed,"--deployed",""),
                 ifelse(no.deployed,"--no-deployed",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.describe.suggesters <- function (domain.name=NULL,suggester.names=NULL,deployed=FALSE,no.deployed=FALSE,cli.input.json=NULL) {
    if(deployed && no.deployed) stop("please set either deployed or no.deployed")
    cmd <- paste("aws cloudsearch describe-suggesters",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(suggester.names),paste("--suggester-names",suggester.names),""),
                 ifelse(deployed,"--deployed",""),
                 ifelse(no.deployed,"--no-deployed",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.index.documents <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch index-documents",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.list.domain.names <- function (cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch list-domain-names",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.update.availability.options <- function (domain.name=NULL,multi.az=FALSE,no.multi.az=FALSE,cli.input.json=NULL) {
    if(multi.az && no.multi.az) stop("please set either multi.az or no.multi.az")
    cmd <- paste("aws cloudsearch update-availability-options",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(multi.az,"--multi-az",""),
                 ifelse(no.multi.az,"--no-multi-az",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.update.scaling.parameters <- function (domain.name=NULL,scaling.parameters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch update-scaling-parameters",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(scaling.parameters),paste("--scaling-parameters",scaling.parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudsearch.update.service.access.policies <- function (domain.name=NULL,access.policies=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudsearch update-service-access-policies",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(access.policies),paste("--access-policies",access.policies),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
