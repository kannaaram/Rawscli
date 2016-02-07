elasticbeanstalk.abort.environment.update <- function (environment.id=NULL,environment.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk abort-environment-update",
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.check.dns.availability <- function (cname.prefix=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk check-dns-availability",
                 ifelse(!is.null(cname.prefix),paste("--cname-prefix",cname.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.compose.environments <- function (application.name=NULL,group.name=NULL,version.labels=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk compose-environments",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(version.labels),paste("--version-labels",version.labels),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.create.application <- function (application.name=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk create-application",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.create.application.version <- function (application.name=NULL,version.label=NULL,description=NULL,source.bundle=NULL,auto.create.application=FALSE,no.auto.create.application=FALSE,process=FALSE,no.process=FALSE,cli.input.json=NULL) {
    if(auto.create.application && no.auto.create.application) stop("please set either auto.create.application or no.auto.create.application")
    if(process && no.process) stop("please set either process or no.process")
    cmd <- paste("aws elasticbeanstalk create-application-version",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(version.label),paste("--version-label",version.label),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(source.bundle),paste("--source-bundle",source.bundle),""),
                 ifelse(auto.create.application,"--auto-create-application",""),
                 ifelse(no.auto.create.application,"--no-auto-create-application",""),
                 ifelse(process,"--process",""),
                 ifelse(no.process,"--no-process",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.create.configuration.template <- function (application.name=NULL,template.name=NULL,solution.stack.name=NULL,source.configuration=NULL,environment.id=NULL,description=NULL,option.settings=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk create-configuration-template",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(solution.stack.name),paste("--solution-stack-name",solution.stack.name),""),
                 ifelse(!is.null(source.configuration),paste("--source-configuration",source.configuration),""),
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(option.settings),paste("--option-settings",option.settings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.create.environment <- function (application.name=NULL,environment.name=NULL,group.name=NULL,description=NULL,cname.prefix=NULL,tier=NULL,tags=NULL,version.label=NULL,template.name=NULL,solution.stack.name=NULL,option.settings=NULL,options.to.remove=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk create-environment",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cname.prefix),paste("--cname-prefix",cname.prefix),""),
                 ifelse(!is.null(tier),paste("--tier",tier),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(version.label),paste("--version-label",version.label),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(solution.stack.name),paste("--solution-stack-name",solution.stack.name),""),
                 ifelse(!is.null(option.settings),paste("--option-settings",option.settings),""),
                 ifelse(!is.null(options.to.remove),paste("--options-to-remove",options.to.remove),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.create.storage.location <- function (cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk create-storage-location",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.delete.application <- function (application.name=NULL,terminate.env.by.force=FALSE,no.terminate.env.by.force=FALSE,cli.input.json=NULL) {
    if(terminate.env.by.force && no.terminate.env.by.force) stop("please set either terminate.env.by.force or no.terminate.env.by.force")
    cmd <- paste("aws elasticbeanstalk delete-application",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(terminate.env.by.force,"--terminate-env-by-force",""),
                 ifelse(no.terminate.env.by.force,"--no-terminate-env-by-force",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.delete.application.version <- function (application.name=NULL,version.label=NULL,delete.source.bundle=FALSE,no.delete.source.bundle=FALSE,cli.input.json=NULL) {
    if(delete.source.bundle && no.delete.source.bundle) stop("please set either delete.source.bundle or no.delete.source.bundle")
    cmd <- paste("aws elasticbeanstalk delete-application-version",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(version.label),paste("--version-label",version.label),""),
                 ifelse(delete.source.bundle,"--delete-source-bundle",""),
                 ifelse(no.delete.source.bundle,"--no-delete-source-bundle",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.delete.configuration.template <- function (application.name=NULL,template.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk delete-configuration-template",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.delete.environment.configuration <- function (application.name=NULL,environment.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk delete-environment-configuration",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.application.versions <- function (application.name=NULL,version.labels=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk describe-application-versions",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(version.labels),paste("--version-labels",version.labels),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.applications <- function (application.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk describe-applications",
                 ifelse(!is.null(application.names),paste("--application-names",application.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.configuration.options <- function (application.name=NULL,template.name=NULL,environment.name=NULL,solution.stack.name=NULL,options=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk describe-configuration-options",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(solution.stack.name),paste("--solution-stack-name",solution.stack.name),""),
                 ifelse(!is.null(options),paste("--options",options),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.configuration.settings <- function (application.name=NULL,template.name=NULL,environment.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk describe-configuration-settings",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.environment.health <- function (environment.name=NULL,environment.id=NULL,attribute.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk describe-environment-health",
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(attribute.names),paste("--attribute-names",attribute.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.environment.resources <- function (environment.id=NULL,environment.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk describe-environment-resources",
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.environments <- function (application.name=NULL,version.label=NULL,environment.ids=NULL,environment.names=NULL,include.deleted=FALSE,no.include.deleted=FALSE,included.deleted.back.to=NULL,cli.input.json=NULL) {
    if(include.deleted && no.include.deleted) stop("please set either include.deleted or no.include.deleted")
    cmd <- paste("aws elasticbeanstalk describe-environments",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(version.label),paste("--version-label",version.label),""),
                 ifelse(!is.null(environment.ids),paste("--environment-ids",environment.ids),""),
                 ifelse(!is.null(environment.names),paste("--environment-names",environment.names),""),
                 ifelse(include.deleted,"--include-deleted",""),
                 ifelse(no.include.deleted,"--no-include-deleted",""),
                 ifelse(!is.null(included.deleted.back.to),paste("--included-deleted-back-to",included.deleted.back.to),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.events <- function (application.name=NULL,version.label=NULL,template.name=NULL,environment.id=NULL,environment.name=NULL,request.id=NULL,severity=NULL,start.time=NULL,end.time=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticbeanstalk describe-events",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(version.label),paste("--version-label",version.label),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(request.id),paste("--request-id",request.id),""),
                 ifelse(!is.null(severity),paste("--severity",severity),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.describe.instances.health <- function (environment.name=NULL,environment.id=NULL,attribute.names=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk describe-instances-health",
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(attribute.names),paste("--attribute-names",attribute.names),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.list.available.solution.stacks <- function (cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk list-available-solution-stacks",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.rebuild.environment <- function (environment.id=NULL,environment.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk rebuild-environment",
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.request.environment.info <- function (environment.id=NULL,environment.name=NULL,info.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk request-environment-info",
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(info.type),paste("--info-type",info.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.restart.app.server <- function (environment.id=NULL,environment.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk restart-app-server",
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.retrieve.environment.info <- function (environment.id=NULL,environment.name=NULL,info.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk retrieve-environment-info",
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(info.type),paste("--info-type",info.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.swap.environment.cnames <- function (source.environment.id=NULL,source.environment.name=NULL,destination.environment.id=NULL,destination.environment.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk swap-environment-cnames",
                 ifelse(!is.null(source.environment.id),paste("--source-environment-id",source.environment.id),""),
                 ifelse(!is.null(source.environment.name),paste("--source-environment-name",source.environment.name),""),
                 ifelse(!is.null(destination.environment.id),paste("--destination-environment-id",destination.environment.id),""),
                 ifelse(!is.null(destination.environment.name),paste("--destination-environment-name",destination.environment.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.terminate.environment <- function (environment.id=NULL,environment.name=NULL,terminate.resources=FALSE,no.terminate.resources=FALSE,force.terminate=FALSE,no.force.terminate=FALSE,cli.input.json=NULL) {
    if(terminate.resources && no.terminate.resources) stop("please set either terminate.resources or no.terminate.resources")
    if(force.terminate && no.force.terminate) stop("please set either force.terminate or no.force.terminate")
    cmd <- paste("aws elasticbeanstalk terminate-environment",
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(terminate.resources,"--terminate-resources",""),
                 ifelse(no.terminate.resources,"--no-terminate-resources",""),
                 ifelse(force.terminate,"--force-terminate",""),
                 ifelse(no.force.terminate,"--no-force-terminate",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.update.application <- function (application.name=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk update-application",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.update.application.version <- function (application.name=NULL,version.label=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk update-application-version",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(version.label),paste("--version-label",version.label),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.update.configuration.template <- function (application.name=NULL,template.name=NULL,description=NULL,option.settings=NULL,options.to.remove=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk update-configuration-template",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(option.settings),paste("--option-settings",option.settings),""),
                 ifelse(!is.null(options.to.remove),paste("--options-to-remove",options.to.remove),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.update.environment <- function (application.name=NULL,environment.id=NULL,environment.name=NULL,group.name=NULL,description=NULL,tier=NULL,version.label=NULL,template.name=NULL,solution.stack.name=NULL,option.settings=NULL,options.to.remove=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk update-environment",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(environment.id),paste("--environment-id",environment.id),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(tier),paste("--tier",tier),""),
                 ifelse(!is.null(version.label),paste("--version-label",version.label),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(solution.stack.name),paste("--solution-stack-name",solution.stack.name),""),
                 ifelse(!is.null(option.settings),paste("--option-settings",option.settings),""),
                 ifelse(!is.null(options.to.remove),paste("--options-to-remove",options.to.remove),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticbeanstalk.validate.configuration.settings <- function (application.name=NULL,template.name=NULL,environment.name=NULL,option.settings=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticbeanstalk validate-configuration-settings",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(template.name),paste("--template-name",template.name),""),
                 ifelse(!is.null(environment.name),paste("--environment-name",environment.name),""),
                 ifelse(!is.null(option.settings),paste("--option-settings",option.settings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
