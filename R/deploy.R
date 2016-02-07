deploy.add.tags.to.on.premises.instances <- function (tags=NULL,instance.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy add-tags-to-on-premises-instances",
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(instance.names),paste("--instance-names",instance.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.batch.get.applications <- function (application.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy batch-get-applications",
                 ifelse(!is.null(application.names),paste("--application-names",application.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.batch.get.deployments <- function (deployment.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy batch-get-deployments",
                 ifelse(!is.null(deployment.ids),paste("--deployment-ids",deployment.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.batch.get.on.premises.instances <- function (instance.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy batch-get-on-premises-instances",
                 ifelse(!is.null(instance.names),paste("--instance-names",instance.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.create.application <- function (application.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy create-application",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.create.deployment <- function (application.name=NULL,deployment.group.name=NULL,revision=NULL,deployment.config.name=NULL,description=NULL,ignore.application.stop.failures=FALSE,no.ignore.application.stop.failures=FALSE,s3.location=NULL,github.location=NULL,cli.input.json=NULL) {
    if(ignore.application.stop.failures && no.ignore.application.stop.failures) stop("please set either ignore.application.stop.failures or no.ignore.application.stop.failures")
    cmd <- paste("aws deploy create-deployment",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(deployment.group.name),paste("--deployment-group-name",deployment.group.name),""),
                 ifelse(!is.null(revision),paste("--revision",revision),""),
                 ifelse(!is.null(deployment.config.name),paste("--deployment-config-name",deployment.config.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(ignore.application.stop.failures,"--ignore-application-stop-failures",""),
                 ifelse(no.ignore.application.stop.failures,"--no-ignore-application-stop-failures",""),
                 ifelse(!is.null(s3.location),paste("--s3-location",s3.location),""),
                 ifelse(!is.null(github.location),paste("--github-location",github.location),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.create.deployment.config <- function (deployment.config.name=NULL,minimum.healthy.hosts=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy create-deployment-config",
                 ifelse(!is.null(deployment.config.name),paste("--deployment-config-name",deployment.config.name),""),
                 ifelse(!is.null(minimum.healthy.hosts),paste("--minimum-healthy-hosts",minimum.healthy.hosts),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.create.deployment.group <- function (application.name=NULL,deployment.group.name=NULL,deployment.config.name=NULL,on.premises.instance.tag.filters=NULL,auto.scaling.groups=NULL,service.role.arn=NULL,ec2.tag.filters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy create-deployment-group",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(deployment.group.name),paste("--deployment-group-name",deployment.group.name),""),
                 ifelse(!is.null(deployment.config.name),paste("--deployment-config-name",deployment.config.name),""),
                 ifelse(!is.null(on.premises.instance.tag.filters),paste("--on-premises-instance-tag-filters",on.premises.instance.tag.filters),""),
                 ifelse(!is.null(auto.scaling.groups),paste("--auto-scaling-groups",auto.scaling.groups),""),
                 ifelse(!is.null(service.role.arn),paste("--service-role-arn",service.role.arn),""),
                 ifelse(!is.null(ec2.tag.filters),paste("--ec2-tag-filters",ec2.tag.filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.delete.application <- function (application.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy delete-application",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.delete.deployment.config <- function (deployment.config.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy delete-deployment-config",
                 ifelse(!is.null(deployment.config.name),paste("--deployment-config-name",deployment.config.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.delete.deployment.group <- function (application.name=NULL,deployment.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy delete-deployment-group",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(deployment.group.name),paste("--deployment-group-name",deployment.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.deregister.on.premises.instance <- function (instance.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy deregister-on-premises-instance",
                 ifelse(!is.null(instance.name),paste("--instance-name",instance.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.get.application <- function (application.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy get-application",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.get.application.revision <- function (application.name=NULL,revision=NULL,s3.location=NULL,github.location=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy get-application-revision",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(revision),paste("--revision",revision),""),
                 ifelse(!is.null(s3.location),paste("--s3-location",s3.location),""),
                 ifelse(!is.null(github.location),paste("--github-location",github.location),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.get.deployment <- function (deployment.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy get-deployment",
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.get.deployment.config <- function (deployment.config.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy get-deployment-config",
                 ifelse(!is.null(deployment.config.name),paste("--deployment-config-name",deployment.config.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.get.deployment.group <- function (application.name=NULL,deployment.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy get-deployment-group",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(deployment.group.name),paste("--deployment-group-name",deployment.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.get.deployment.instance <- function (deployment.id=NULL,instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy get-deployment-instance",
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.get.on.premises.instance <- function (instance.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy get-on-premises-instance",
                 ifelse(!is.null(instance.name),paste("--instance-name",instance.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.list.application.revisions <- function (application.name=NULL,sort.by=NULL,sort.order=NULL,s.3.bucket=NULL,s.3.key.prefix=NULL,deployed=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy list-application-revisions",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(sort.by),paste("--sort-by",sort.by),""),
                 ifelse(!is.null(sort.order),paste("--sort-order",sort.order),""),
                 ifelse(!is.null(s.3.bucket),paste("--s-3-bucket",s.3.bucket),""),
                 ifelse(!is.null(s.3.key.prefix),paste("--s-3-key-prefix",s.3.key.prefix),""),
                 ifelse(!is.null(deployed),paste("--deployed",deployed),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.list.applications <- function (next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy list-applications",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.list.deployment.configs <- function (next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy list-deployment-configs",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.list.deployment.groups <- function (application.name=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy list-deployment-groups",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.list.deployment.instances <- function (deployment.id=NULL,next.token=NULL,instance.status.filter=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy list-deployment-instances",
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(instance.status.filter),paste("--instance-status-filter",instance.status.filter),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.list.deployments <- function (application.name=NULL,deployment.group.name=NULL,include.only.statuses=NULL,create.time.range=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy list-deployments",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(deployment.group.name),paste("--deployment-group-name",deployment.group.name),""),
                 ifelse(!is.null(include.only.statuses),paste("--include-only-statuses",include.only.statuses),""),
                 ifelse(!is.null(create.time.range),paste("--create-time-range",create.time.range),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.list.on.premises.instances <- function (registration.status=NULL,tag.filters=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy list-on-premises-instances",
                 ifelse(!is.null(registration.status),paste("--registration-status",registration.status),""),
                 ifelse(!is.null(tag.filters),paste("--tag-filters",tag.filters),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.register.application.revision <- function (application.name=NULL,description=NULL,revision=NULL,s3.location=NULL,github.location=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy register-application-revision",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(revision),paste("--revision",revision),""),
                 ifelse(!is.null(s3.location),paste("--s3-location",s3.location),""),
                 ifelse(!is.null(github.location),paste("--github-location",github.location),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.register.on.premises.instance <- function (instance.name=NULL,iam.user.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy register-on-premises-instance",
                 ifelse(!is.null(instance.name),paste("--instance-name",instance.name),""),
                 ifelse(!is.null(iam.user.arn),paste("--iam-user-arn",iam.user.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.remove.tags.from.on.premises.instances <- function (tags=NULL,instance.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy remove-tags-from-on-premises-instances",
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(instance.names),paste("--instance-names",instance.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.stop.deployment <- function (deployment.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy stop-deployment",
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.update.application <- function (application.name=NULL,new.application.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy update-application",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(new.application.name),paste("--new-application-name",new.application.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
deploy.update.deployment.group <- function (application.name=NULL,current.deployment.group.name=NULL,new.deployment.group.name=NULL,deployment.config.name=NULL,on.premises.instance.tag.filters=NULL,auto.scaling.groups=NULL,service.role.arn=NULL,ec2.tag.filters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws deploy update-deployment-group",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(current.deployment.group.name),paste("--current-deployment-group-name",current.deployment.group.name),""),
                 ifelse(!is.null(new.deployment.group.name),paste("--new-deployment-group-name",new.deployment.group.name),""),
                 ifelse(!is.null(deployment.config.name),paste("--deployment-config-name",deployment.config.name),""),
                 ifelse(!is.null(on.premises.instance.tag.filters),paste("--on-premises-instance-tag-filters",on.premises.instance.tag.filters),""),
                 ifelse(!is.null(auto.scaling.groups),paste("--auto-scaling-groups",auto.scaling.groups),""),
                 ifelse(!is.null(service.role.arn),paste("--service-role-arn",service.role.arn),""),
                 ifelse(!is.null(ec2.tag.filters),paste("--ec2-tag-filters",ec2.tag.filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
