ssm.cancel.command <- function (command.id=NULL,instance.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm cancel-command",
                 ifelse(!is.null(command.id),paste("--command-id",command.id),""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.create.association <- function (name=NULL,instance.id=NULL,parameters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm create-association",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.create.association.batch <- function (entries=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm create-association-batch",
                 ifelse(!is.null(entries),paste("--entries",entries),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.create.document <- function (content=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm create-document",
                 ifelse(!is.null(content),paste("--content",content),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.delete.association <- function (name=NULL,instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm delete-association",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.delete.document <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm delete-document",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.describe.association <- function (name=NULL,instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm describe-association",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.describe.document <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm describe-document",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.describe.instance.information <- function (instance.information.filter.list=NULL,max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm describe-instance-information",
                 ifelse(!is.null(instance.information.filter.list),paste("--instance-information-filter-list",instance.information.filter.list),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.get.document <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm get-document",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.list.associations <- function (association.filter.list=NULL,max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm list-associations",
                 ifelse(!is.null(association.filter.list),paste("--association-filter-list",association.filter.list),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.list.command.invocations <- function (command.id=NULL,instance.id=NULL,max.results=NULL,next.token=NULL,filters=NULL,details=FALSE,no.details=FALSE,cli.input.json=NULL) {
    if(details && no.details) stop("please set either details or no.details")
    cmd <- paste("aws ssm list-command-invocations",
                 ifelse(!is.null(command.id),paste("--command-id",command.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(details,"--details",""),
                 ifelse(no.details,"--no-details",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.list.commands <- function (command.id=NULL,instance.id=NULL,max.results=NULL,next.token=NULL,filters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm list-commands",
                 ifelse(!is.null(command.id),paste("--command-id",command.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.list.documents <- function (document.filter.list=NULL,max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm list-documents",
                 ifelse(!is.null(document.filter.list),paste("--document-filter-list",document.filter.list),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.send.command <- function (instance.ids=NULL,document.name=NULL,timeout.seconds=NULL,comment=NULL,parameters=NULL,output.s3.bucket.name=NULL,output.s3.key.prefix=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm send-command",
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(document.name),paste("--document-name",document.name),""),
                 ifelse(!is.null(timeout.seconds),paste("--timeout-seconds",timeout.seconds),""),
                 ifelse(!is.null(comment),paste("--comment",comment),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(output.s3.bucket.name),paste("--output-s3-bucket-name",output.s3.bucket.name),""),
                 ifelse(!is.null(output.s3.key.prefix),paste("--output-s3-key-prefix",output.s3.key.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ssm.update.association.status <- function (name=NULL,instance.id=NULL,association.status=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ssm update-association-status",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(association.status),paste("--association-status",association.status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
