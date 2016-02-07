cloudtrail.add.tags <- function (resource.id=NULL,tags.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail add-tags",
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(tags.list),paste("--tags-list",tags.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.create.trail <- function (name=NULL,s3.bucket.name=NULL,s3.key.prefix=NULL,sns.topic.name=NULL,include.global.service.events=FALSE,no.include.global.service.events=FALSE,enable.log.file.validation=FALSE,no.enable.log.file.validation=FALSE,cloud.watch.logs.log.group.arn=NULL,cloud.watch.logs.role.arn=NULL,kms.key.id=NULL,cli.input.json=NULL) {
    if(include.global.service.events && no.include.global.service.events) stop("please set either include.global.service.events or no.include.global.service.events")
    if(enable.log.file.validation && no.enable.log.file.validation) stop("please set either enable.log.file.validation or no.enable.log.file.validation")
    cmd <- paste("aws cloudtrail create-trail",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(s3.bucket.name),paste("--s3-bucket-name",s3.bucket.name),""),
                 ifelse(!is.null(s3.key.prefix),paste("--s3-key-prefix",s3.key.prefix),""),
                 ifelse(!is.null(sns.topic.name),paste("--sns-topic-name",sns.topic.name),""),
                 ifelse(include.global.service.events,"--include-global-service-events",""),
                 ifelse(no.include.global.service.events,"--no-include-global-service-events",""),
                 ifelse(enable.log.file.validation,"--enable-log-file-validation",""),
                 ifelse(no.enable.log.file.validation,"--no-enable-log-file-validation",""),
                 ifelse(!is.null(cloud.watch.logs.log.group.arn),paste("--cloud-watch-logs-log-group-arn",cloud.watch.logs.log.group.arn),""),
                 ifelse(!is.null(cloud.watch.logs.role.arn),paste("--cloud-watch-logs-role-arn",cloud.watch.logs.role.arn),""),
                 ifelse(!is.null(kms.key.id),paste("--kms-key-id",kms.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.delete.trail <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail delete-trail",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.describe.trails <- function (trail.name.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail describe-trails",
                 ifelse(!is.null(trail.name.list),paste("--trail-name-list",trail.name.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.get.trail.status <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail get-trail-status",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.list.public.keys <- function (start.time=NULL,end.time=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail list-public-keys",
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.list.tags <- function (resource.id.list=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail list-tags",
                 ifelse(!is.null(resource.id.list),paste("--resource-id-list",resource.id.list),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.lookup.events <- function (lookup.attributes=NULL,start.time=NULL,end.time=NULL,max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail lookup-events",
                 ifelse(!is.null(lookup.attributes),paste("--lookup-attributes",lookup.attributes),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.remove.tags <- function (resource.id=NULL,tags.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail remove-tags",
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(tags.list),paste("--tags-list",tags.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.start.logging <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail start-logging",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.stop.logging <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudtrail stop-logging",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.update.trail <- function (name=NULL,s3.bucket.name=NULL,s3.key.prefix=NULL,sns.topic.name=NULL,include.global.service.events=FALSE,no.include.global.service.events=FALSE,enable.log.file.validation=FALSE,no.enable.log.file.validation=FALSE,cloud.watch.logs.log.group.arn=NULL,cloud.watch.logs.role.arn=NULL,kms.key.id=NULL,cli.input.json=NULL) {
    if(include.global.service.events && no.include.global.service.events) stop("please set either include.global.service.events or no.include.global.service.events")
    if(enable.log.file.validation && no.enable.log.file.validation) stop("please set either enable.log.file.validation or no.enable.log.file.validation")
    cmd <- paste("aws cloudtrail update-trail",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(s3.bucket.name),paste("--s3-bucket-name",s3.bucket.name),""),
                 ifelse(!is.null(s3.key.prefix),paste("--s3-key-prefix",s3.key.prefix),""),
                 ifelse(!is.null(sns.topic.name),paste("--sns-topic-name",sns.topic.name),""),
                 ifelse(include.global.service.events,"--include-global-service-events",""),
                 ifelse(no.include.global.service.events,"--no-include-global-service-events",""),
                 ifelse(enable.log.file.validation,"--enable-log-file-validation",""),
                 ifelse(no.enable.log.file.validation,"--no-enable-log-file-validation",""),
                 ifelse(!is.null(cloud.watch.logs.log.group.arn),paste("--cloud-watch-logs-log-group-arn",cloud.watch.logs.log.group.arn),""),
                 ifelse(!is.null(cloud.watch.logs.role.arn),paste("--cloud-watch-logs-role-arn",cloud.watch.logs.role.arn),""),
                 ifelse(!is.null(kms.key.id),paste("--kms-key-id",kms.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudtrail.validate.logs <- function (trail.arn=NULL,start.time=NULL,end.time=NULL,s3.bucket=NULL,s3.prefix=NULL) {
    cmd <- paste("aws cloudtrail validate-logs",
                 ifelse(!is.null(trail.arn),paste("--trail-arn",trail.arn),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(s3.bucket),paste("--s3-bucket",s3.bucket),""),
                 ifelse(!is.null(s3.prefix),paste("--s3-prefix",s3.prefix),""))
    system(cmd,intern=TRUE) 
}
