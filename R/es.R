es.add.tags <- function (arn=NULL,tag.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es add-tags",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(tag.list),paste("--tag-list",tag.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.create.elasticsearch.domain <- function (domain.name=NULL,elasticsearch.cluster.config=NULL,ebs.options=NULL,access.policies=NULL,snapshot.options=NULL,advanced.options=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es create-elasticsearch-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(elasticsearch.cluster.config),paste("--elasticsearch-cluster-config",elasticsearch.cluster.config),""),
                 ifelse(!is.null(ebs.options),paste("--ebs-options",ebs.options),""),
                 ifelse(!is.null(access.policies),paste("--access-policies",access.policies),""),
                 ifelse(!is.null(snapshot.options),paste("--snapshot-options",snapshot.options),""),
                 ifelse(!is.null(advanced.options),paste("--advanced-options",advanced.options),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.delete.elasticsearch.domain <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es delete-elasticsearch-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.describe.elasticsearch.domain <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es describe-elasticsearch-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.describe.elasticsearch.domain.config <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es describe-elasticsearch-domain-config",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.describe.elasticsearch.domains <- function (domain.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es describe-elasticsearch-domains",
                 ifelse(!is.null(domain.names),paste("--domain-names",domain.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.list.domain.names <- function (cli.input.json=NULL) {
    cmd <- paste("aws es list-domain-names",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.list.tags <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es list-tags",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.remove.tags <- function (arn=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es remove-tags",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
es.update.elasticsearch.domain.config <- function (domain.name=NULL,elasticsearch.cluster.config=NULL,ebs.options=NULL,snapshot.options=NULL,advanced.options=NULL,access.policies=NULL,cli.input.json=NULL) {
    cmd <- paste("aws es update-elasticsearch-domain-config",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(elasticsearch.cluster.config),paste("--elasticsearch-cluster-config",elasticsearch.cluster.config),""),
                 ifelse(!is.null(ebs.options),paste("--ebs-options",ebs.options),""),
                 ifelse(!is.null(snapshot.options),paste("--snapshot-options",snapshot.options),""),
                 ifelse(!is.null(advanced.options),paste("--advanced-options",advanced.options),""),
                 ifelse(!is.null(access.policies),paste("--access-policies",access.policies),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
