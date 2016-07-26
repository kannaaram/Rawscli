emr.add.instance.groups <- function (cluster.id=NULL,instance.groups=NULL) {
    cmd <- paste("aws emr add-instance-groups",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(instance.groups),paste("--instance-groups <value> <value>...",instance.groups),""))
    system(cmd,intern=TRUE) 
}
emr.add.steps <- function (cluster.id=NULL,steps=NULL) {
    cmd <- paste("aws emr add-steps",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(steps),paste("--steps <value> <value>...",steps),""))
    system(cmd,intern=TRUE) 
}
emr.add.tags <- function (resource.id=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws emr add-tags",
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
emr.create.cluster <- function(release.label=FALSE,ami.version=FALSE,instance.type=FALSE,instance.groups=FALSE,instance.count=NULL,auto.terminate=FALSE,no.auto.terminate=FALSE,service.role=NULL,configurations=NULL,name=NULL,log.uri=NULL,additional.info=NULL,ec2.attributes=NULL,termination.protected=FALSE,no.termination.protected=FALSE,visible.to.all.users=FALSE,no.visible.to.all.users=FALSE,enable.debugging=FALSE,no.enable.debugging=FALSE,tags=NULL,applications=NULL,emrfs=NULL,bootstrap.actions=NULL,steps=NULL,restore.from.hbase.backup=NULL) {
    if(release.label && ami.version) stop("please set either release.label<value> or ami.version<value>")
    if(instance.type && instance.groups) stop("please set either instance.type<value> or instance.groups<value>")
    if(auto.terminate && no.auto.terminate) stop("please set either auto.terminate or no.auto.terminate")
    if(termination.protected && no.termination.protected) stop("please set either termination.protected or no.termination.protected")
    if(visible.to.all.users && no.visible.to.all.users) stop("please set either visible.to.all.users or no.visible.to.all.users")
    if(enable.debugging && no.enable.debugging) stop("please set either enable.debugging or no.enable.debugging")
    cmd <- paste("aws emr create-cluster",
                 ifelse(release.label,"--release-label<value>",""),
                 ifelse(ami.version,"--ami-version<value>",""),
                 ifelse(!is.null(release.label | ami.version),paste("--release-label <value> | ami-version",release.label | ami.version),""),
                 ifelse(instance.type,"--instance-type<value>",""),
                 ifelse(instance.groups,"--instance-groups<value>",""),
                 ifelse(!is.null(instance.type | instance.groups),paste("--instance-type <value> | instance-groups",instance.type | instance.groups),""),
                 ifelse(!is.null(instance.count),paste("--instance-count",instance.count),""),
                 ifelse(auto.terminate,"--auto-terminate",""),
                 ifelse(no.auto.terminate,"--no-auto-terminate",""),
                 ifelse(!is.null(service.role),paste("--service-role",service.role),""),
                 ifelse(!is.null(configurations),paste("--configurations",configurations),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(log.uri),paste("--log-uri",log.uri),""),
                 ifelse(!is.null(additional.info),paste("--additional-info",additional.info),""),
                 ifelse(!is.null(ec2.attributes),paste("--ec2-attributes",ec2.attributes),""),
                 ifelse(termination.protected,"--termination-protected",""),
                 ifelse(no.termination.protected,"--no-termination-protected",""),
                 ifelse(visible.to.all.users,"--visible-to-all-users",""),
                 ifelse(no.visible.to.all.users,"--no-visible-to-all-users",""),
                 ifelse(enable.debugging,"--enable-debugging",""),
                 ifelse(no.enable.debugging,"--no-enable-debugging",""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(applications),paste("--applications",applications),""),
                 ifelse(!is.null(emrfs),paste("--emrfs",emrfs),""),
                 ifelse(!is.null(bootstrap.actions),paste("--bootstrap-actions",bootstrap.actions),""),
                 ifelse(!is.null(steps),paste("--steps",steps),""),
                 ifelse(!is.null(restore.from.hbase.backup),paste("--restore-from-hbase-backup",restore.from.hbase.backup),""))
    system(cmd,intern=TRUE) 
}
emr.create.default.roles <- function (iam.endpoint=NULL) {
    cmd <- paste("aws emr create-default-roles",
                 ifelse(!is.null(iam.endpoint),paste("--iam-endpoint",iam.endpoint),""))
    system(cmd,intern=TRUE) 
}
emr.create.hbase.backup <- function (cluster.id=NULL,dir=NULL) {
    cmd <- paste("aws emr create-hbase-backup",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(dir),paste("--dir",dir),""))
    system(cmd,intern=TRUE) 
}
emr.describe.cluster <- function (cluster.id=NULL) {
    cmd <- paste("aws emr describe-cluster",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""))
    system(cmd,intern=TRUE) 
}
emr.describe.step <- function (cluster.id=NULL,step.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws emr describe-step",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(step.id),paste("--step-id",step.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
emr.disable.hbase.backups <- function (cluster.id=NULL) {
    cmd <- paste("aws emr disable-hbase-backups",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""))
    system(cmd,intern=TRUE) 
}
emr.get <- function (cluster.id=NULL,key.pair.file=NULL,src=NULL,dest=NULL) {
    cmd <- paste("aws emr get",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(key.pair.file),paste("--key-pair-file",key.pair.file),""),
                 ifelse(!is.null(src),paste("--src",src),""),
                 ifelse(!is.null(dest),paste("--dest",dest),""))
    system(cmd,intern=TRUE) 
}
emr.install.applications <- function (cluster.id=NULL,applications=NULL) {
    cmd <- paste("aws emr install-applications",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(applications),paste("--applications <value> <value>...",applications),""))
    system(cmd,intern=TRUE) 
}
emr.list.instances <- function (cluster.id=NULL,instance.group.id=NULL,instance.group.types=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws emr list-instances",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(instance.group.id),paste("--instance-group-id",instance.group.id),""),
                 ifelse(!is.null(instance.group.types),paste("--instance-group-types",instance.group.types),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
emr.list.steps <- function (cluster.id=NULL,step.states=NULL,step.ids=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws emr list-steps",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(step.states),paste("--step-states",step.states),""),
                 ifelse(!is.null(step.ids),paste("--step-ids",step.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
emr.modify.cluster.attributes <- function (cluster.id=NULL,visible.to.all.users=FALSE,no.visible.to.all.users=FALSE,termination.protected=FALSE,no.termination.protected=FALSE) {
    if(visible.to.all.users && no.visible.to.all.users) stop("please set either visible.to.all.users or no.visible.to.all.users")
    if(termination.protected && no.termination.protected) stop("please set either termination.protected or no.termination.protected")
    cmd <- paste("aws emr modify-cluster-attributes",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(visible.to.all.users,"--visible-to-all-users",""),
                 ifelse(no.visible.to.all.users,"--no-visible-to-all-users",""),
                 ifelse(termination.protected,"--termination-protected",""),
                 ifelse(no.termination.protected,"--no-termination-protected",""))
    system(cmd,intern=TRUE) 
}
emr.modify.instance.groups <- function (instance.groups=NULL,cli.input.json=NULL) {
    cmd <- paste("aws emr modify-instance-groups",
                 ifelse(!is.null(instance.groups),paste("--instance-groups",instance.groups),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
emr.put <- function (cluster.id=NULL,key.pair.file=NULL,src=NULL,dest=NULL) {
    cmd <- paste("aws emr put",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(key.pair.file),paste("--key-pair-file",key.pair.file),""),
                 ifelse(!is.null(src),paste("--src",src),""),
                 ifelse(!is.null(dest),paste("--dest",dest),""))
    system(cmd,intern=TRUE) 
}
emr.remove.tags <- function (resource.id=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws emr remove-tags",
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
emr.restore.from.hbase.backup <- function (cluster.id=NULL,dir=NULL,backup.version=NULL) {
    cmd <- paste("aws emr restore-from-hbase-backup",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(dir),paste("--dir",dir),""),
                 ifelse(!is.null(backup.version),paste("--backup-version",backup.version),""))
    system(cmd,intern=TRUE) 
}
emr.schedule.hbase.backup <- function (cluster.id=NULL,type=NULL,dir=NULL,interval=NULL,unit=NULL,start.time=NULL) {
    cmd <- paste("aws emr schedule-hbase-backup",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(dir),paste("--dir",dir),""),
                 ifelse(!is.null(interval),paste("--interval",interval),""),
                 ifelse(!is.null(unit),paste("--unit",unit),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""))
    system(cmd,intern=TRUE) 
}
emr.socks <- function (cluster.id=NULL,key.pair.file=NULL) {
    cmd <- paste("aws emr socks",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(key.pair.file),paste("--key-pair-file",key.pair.file),""))
    system(cmd,intern=TRUE) 
}
emr.ssh <- function (cluster.id=NULL,key.pair.file=NULL,command=NULL) {
    cmd <- paste("aws emr ssh",
                 ifelse(!is.null(cluster.id),paste("--cluster-id",cluster.id),""),
                 ifelse(!is.null(key.pair.file),paste("--key-pair-file",key.pair.file),""),
                 ifelse(!is.null(command),paste("--command",command),""))
    system(cmd,intern=TRUE) 
}
emr.terminate.clusters <- function (cluster.ids=NULL) {
    cmd <- paste("aws emr terminate-clusters",
                 ifelse(!is.null(cluster.ids),paste("--cluster-ids <value> <value>...",cluster.ids),""))
    system(cmd,intern=TRUE) 
}
