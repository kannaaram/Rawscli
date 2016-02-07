configservice.delete.config.rule <- function (config.rule.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice delete-config-rule",
                 ifelse(!is.null(config.rule.name),paste("--config-rule-name",config.rule.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.delete.delivery.channel <- function (delivery.channel.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice delete-delivery-channel",
                 ifelse(!is.null(delivery.channel.name),paste("--delivery-channel-name",delivery.channel.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.deliver.config.snapshot <- function (delivery.channel.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice deliver-config-snapshot",
                 ifelse(!is.null(delivery.channel.name),paste("--delivery-channel-name",delivery.channel.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.describe.compliance.by.config.rule <- function (config.rule.names=NULL,compliance.types=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice describe-compliance-by-config-rule",
                 ifelse(!is.null(config.rule.names),paste("--config-rule-names",config.rule.names),""),
                 ifelse(!is.null(compliance.types),paste("--compliance-types",compliance.types),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.describe.compliance.by.resource <- function (resource.type=NULL,resource.id=NULL,compliance.types=NULL,limit=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice describe-compliance-by-resource",
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(compliance.types),paste("--compliance-types",compliance.types),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.describe.config.rule.evaluation.status <- function (config.rule.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice describe-config-rule-evaluation-status",
                 ifelse(!is.null(config.rule.names),paste("--config-rule-names",config.rule.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.describe.config.rules <- function (config.rule.names=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice describe-config-rules",
                 ifelse(!is.null(config.rule.names),paste("--config-rule-names",config.rule.names),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.describe.configuration.recorder.status <- function (configuration.recorder.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice describe-configuration-recorder-status",
                 ifelse(!is.null(configuration.recorder.names),paste("--configuration-recorder-names",configuration.recorder.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.describe.configuration.recorders <- function (configuration.recorder.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice describe-configuration-recorders",
                 ifelse(!is.null(configuration.recorder.names),paste("--configuration-recorder-names",configuration.recorder.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.describe.delivery.channel.status <- function (delivery.channel.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice describe-delivery-channel-status",
                 ifelse(!is.null(delivery.channel.names),paste("--delivery-channel-names",delivery.channel.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.describe.delivery.channels <- function (delivery.channel.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice describe-delivery-channels",
                 ifelse(!is.null(delivery.channel.names),paste("--delivery-channel-names",delivery.channel.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.get.compliance.details.by.config.rule <- function (config.rule.name=NULL,compliance.types=NULL,limit=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice get-compliance-details-by-config-rule",
                 ifelse(!is.null(config.rule.name),paste("--config-rule-name",config.rule.name),""),
                 ifelse(!is.null(compliance.types),paste("--compliance-types",compliance.types),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.get.compliance.details.by.resource <- function (resource.type=NULL,resource.id=NULL,compliance.types=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice get-compliance-details-by-resource",
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(compliance.types),paste("--compliance-types",compliance.types),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.get.compliance.summary.by.config.rule <- function (cli.input.json=NULL) {
    cmd <- paste("aws configservice get-compliance-summary-by-config-rule",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.get.compliance.summary.by.resource.type <- function (resource.types=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice get-compliance-summary-by-resource-type",
                 ifelse(!is.null(resource.types),paste("--resource-types",resource.types),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.get.resource.config.history <- function (resource.type=NULL,resource.id=NULL,later.time=NULL,earlier.time=NULL,chronological.order=NULL,limit=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice get-resource-config-history",
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(later.time),paste("--later-time",later.time),""),
                 ifelse(!is.null(earlier.time),paste("--earlier-time",earlier.time),""),
                 ifelse(!is.null(chronological.order),paste("--chronological-order",chronological.order),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.list.discovered.resources <- function (resource.type=NULL,resource.ids=NULL,resource.name=NULL,limit=NULL,include.deleted.resources=FALSE,no.include.deleted.resources=FALSE,next.token=NULL,cli.input.json=NULL) {
    if(include.deleted.resources && no.include.deleted.resources) stop("please set either include.deleted.resources or no.include.deleted.resources")
    cmd <- paste("aws configservice list-discovered-resources",
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(resource.ids),paste("--resource-ids",resource.ids),""),
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(include.deleted.resources,"--include-deleted-resources",""),
                 ifelse(no.include.deleted.resources,"--no-include-deleted-resources",""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.put.config.rule <- function (config.rule=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice put-config-rule",
                 ifelse(!is.null(config.rule),paste("--config-rule",config.rule),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.put.configuration.recorder <- function (configuration.recorder=NULL,recording.group=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice put-configuration-recorder",
                 ifelse(!is.null(configuration.recorder),paste("--configuration-recorder",configuration.recorder),""),
                 ifelse(!is.null(recording.group),paste("--recording-group",recording.group),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.put.delivery.channel <- function (delivery.channel=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice put-delivery-channel",
                 ifelse(!is.null(delivery.channel),paste("--delivery-channel",delivery.channel),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.put.evaluations <- function (evaluations=NULL,result.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice put-evaluations",
                 ifelse(!is.null(evaluations),paste("--evaluations",evaluations),""),
                 ifelse(!is.null(result.token),paste("--result-token",result.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.start.configuration.recorder <- function (configuration.recorder.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice start-configuration-recorder",
                 ifelse(!is.null(configuration.recorder.name),paste("--configuration-recorder-name",configuration.recorder.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.stop.configuration.recorder <- function (configuration.recorder.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws configservice stop-configuration-recorder",
                 ifelse(!is.null(configuration.recorder.name),paste("--configuration-recorder-name",configuration.recorder.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
configservice.subscribe <- function (s3.bucket=NULL,sns.topic=NULL,iam.role=NULL) {
    cmd <- paste("aws configservice subscribe",
                 ifelse(!is.null(s3.bucket),paste("--s3-bucket",s3.bucket),""),
                 ifelse(!is.null(sns.topic),paste("--sns-topic",sns.topic),""),
                 ifelse(!is.null(iam.role),paste("--iam-role",iam.role),""))
    system(cmd,intern=TRUE) 
}
