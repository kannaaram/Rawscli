rds.add.option.to.option.group <- function (option.group.name=NULL,apply.immediately=FALSE,no.apply.immediately=FALSE,options=NULL,cli.input.json=NULL) {
    if(apply.immediately && no.apply.immediately) stop("please set either apply.immediately or no.apply.immediately")
    cmd <- paste("aws rds add-option-to-option-group",
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(apply.immediately,"--apply-immediately",""),
                 ifelse(no.apply.immediately,"--no-apply-immediately",""),
                 ifelse(!is.null(options),paste("--options",options),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.add.source.identifier.to.subscription <- function (subscription.name=NULL,source.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds add-source-identifier-to-subscription",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(source.identifier),paste("--source-identifier",source.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.add.tags.to.resource <- function (resource.name=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds add-tags-to-resource",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.apply.pending.maintenance.action <- function (resource.identifier=NULL,apply.action=NULL,opt.in.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds apply-pending-maintenance-action",
                 ifelse(!is.null(resource.identifier),paste("--resource-identifier",resource.identifier),""),
                 ifelse(!is.null(apply.action),paste("--apply-action",apply.action),""),
                 ifelse(!is.null(opt.in.type),paste("--opt-in-type",opt.in.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.authorize.db.security.group.ingress <- function (db.security.group.name=NULL,cidrip=NULL,ec2.security.group.name=NULL,ec2.security.group.id=NULL,ec2.security.group.owner.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds authorize-db-security-group-ingress",
                 ifelse(!is.null(db.security.group.name),paste("--db-security-group-name",db.security.group.name),""),
                 ifelse(!is.null(cidrip),paste("--cidrip",cidrip),""),
                 ifelse(!is.null(ec2.security.group.name),paste("--ec2-security-group-name",ec2.security.group.name),""),
                 ifelse(!is.null(ec2.security.group.id),paste("--ec2-security-group-id",ec2.security.group.id),""),
                 ifelse(!is.null(ec2.security.group.owner.id),paste("--ec2-security-group-owner-id",ec2.security.group.owner.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.copy.db.cluster.snapshot <- function (source.db.cluster.snapshot.identifier=NULL,target.db.cluster.snapshot.identifier=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds copy-db-cluster-snapshot",
                 ifelse(!is.null(source.db.cluster.snapshot.identifier),paste("--source-db-cluster-snapshot-identifier",source.db.cluster.snapshot.identifier),""),
                 ifelse(!is.null(target.db.cluster.snapshot.identifier),paste("--target-db-cluster-snapshot-identifier",target.db.cluster.snapshot.identifier),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.copy.db.parameter.group <- function (source.db.parameter.group.identifier=NULL,target.db.parameter.group.identifier=NULL,target.db.parameter.group.description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds copy-db-parameter-group",
                 ifelse(!is.null(source.db.parameter.group.identifier),paste("--source-db-parameter-group-identifier",source.db.parameter.group.identifier),""),
                 ifelse(!is.null(target.db.parameter.group.identifier),paste("--target-db-parameter-group-identifier",target.db.parameter.group.identifier),""),
                 ifelse(!is.null(target.db.parameter.group.description),paste("--target-db-parameter-group-description",target.db.parameter.group.description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.copy.db.snapshot <- function (source.db.snapshot.identifier=NULL,target.db.snapshot.identifier=NULL,tags=NULL,copy.tags=FALSE,no.copy.tags=FALSE,cli.input.json=NULL) {
    if(copy.tags && no.copy.tags) stop("please set either copy.tags or no.copy.tags")
    cmd <- paste("aws rds copy-db-snapshot",
                 ifelse(!is.null(source.db.snapshot.identifier),paste("--source-db-snapshot-identifier",source.db.snapshot.identifier),""),
                 ifelse(!is.null(target.db.snapshot.identifier),paste("--target-db-snapshot-identifier",target.db.snapshot.identifier),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(copy.tags,"--copy-tags",""),
                 ifelse(no.copy.tags,"--no-copy-tags",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.copy.option.group <- function (source.option.group.identifier=NULL,target.option.group.identifier=NULL,target.option.group.description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds copy-option-group",
                 ifelse(!is.null(source.option.group.identifier),paste("--source-option-group-identifier",source.option.group.identifier),""),
                 ifelse(!is.null(target.option.group.identifier),paste("--target-option-group-identifier",target.option.group.identifier),""),
                 ifelse(!is.null(target.option.group.description),paste("--target-option-group-description",target.option.group.description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.cluster <- function (availability.zones=NULL,backup.retention.period=NULL,character.set.name=NULL,database.name=NULL,db.cluster.identifier=NULL,db.cluster.parameter.group.name=NULL,vpc.security.group.ids=NULL,db.subnet.group.name=NULL,engine=NULL,engine.version=NULL,port=NULL,master.username=NULL,master.user.password=NULL,option.group.name=NULL,preferred.backup.window=NULL,preferred.maintenance.window=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds create-db-cluster",
                 ifelse(!is.null(availability.zones),paste("--availability-zones",availability.zones),""),
                 ifelse(!is.null(backup.retention.period),paste("--backup-retention-period",backup.retention.period),""),
                 ifelse(!is.null(character.set.name),paste("--character-set-name",character.set.name),""),
                 ifelse(!is.null(database.name),paste("--database-name",database.name),""),
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(db.cluster.parameter.group.name),paste("--db-cluster-parameter-group-name",db.cluster.parameter.group.name),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(master.username),paste("--master-username",master.username),""),
                 ifelse(!is.null(master.user.password),paste("--master-user-password",master.user.password),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(preferred.backup.window),paste("--preferred-backup-window",preferred.backup.window),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.cluster.parameter.group <- function (db.cluster.parameter.group.name=NULL,db.parameter.group.family=NULL,description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds create-db-cluster-parameter-group",
                 ifelse(!is.null(db.cluster.parameter.group.name),paste("--db-cluster-parameter-group-name",db.cluster.parameter.group.name),""),
                 ifelse(!is.null(db.parameter.group.family),paste("--db-parameter-group-family",db.parameter.group.family),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.cluster.snapshot <- function (db.cluster.snapshot.identifier=NULL,db.cluster.identifier=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds create-db-cluster-snapshot",
                 ifelse(!is.null(db.cluster.snapshot.identifier),paste("--db-cluster-snapshot-identifier",db.cluster.snapshot.identifier),""),
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.instance <- function (db.name=NULL,db.instance.identifier=NULL,allocated.storage=NULL,db.instance.class=NULL,engine=NULL,master.username=NULL,master.user.password=NULL,db.security.groups=NULL,vpc.security.group.ids=NULL,availability.zone=NULL,db.subnet.group.name=NULL,preferred.maintenance.window=NULL,db.parameter.group.name=NULL,backup.retention.period=NULL,preferred.backup.window=NULL,port=NULL,multi.az=FALSE,no.multi.az=FALSE,engine.version=NULL,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,license.model=NULL,iops=NULL,option.group.name=NULL,character.set.name=NULL,publicly.accessible=FALSE,no.publicly.accessible=FALSE,tags=NULL,db.cluster.identifier=NULL,storage.type=NULL,tde.credential.arn=NULL,tde.credential.password=NULL,storage.encrypted=FALSE,no.storage.encrypted=FALSE,kms.key.id=NULL,copy.tags.to.snapshot=FALSE,no.copy.tags.to.snapshot=FALSE,cli.input.json=NULL) {
    if(multi.az && no.multi.az) stop("please set either multi.az or no.multi.az")
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    if(publicly.accessible && no.publicly.accessible) stop("please set either publicly.accessible or no.publicly.accessible")
    if(storage.encrypted && no.storage.encrypted) stop("please set either storage.encrypted or no.storage.encrypted")
    if(copy.tags.to.snapshot && no.copy.tags.to.snapshot) stop("please set either copy.tags.to.snapshot or no.copy.tags.to.snapshot")
    cmd <- paste("aws rds create-db-instance",
                 ifelse(!is.null(db.name),paste("--db-name",db.name),""),
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(allocated.storage),paste("--allocated-storage",allocated.storage),""),
                 ifelse(!is.null(db.instance.class),paste("--db-instance-class",db.instance.class),""),
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(master.username),paste("--master-username",master.username),""),
                 ifelse(!is.null(master.user.password),paste("--master-user-password",master.user.password),""),
                 ifelse(!is.null(db.security.groups),paste("--db-security-groups",db.security.groups),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(db.parameter.group.name),paste("--db-parameter-group-name",db.parameter.group.name),""),
                 ifelse(!is.null(backup.retention.period),paste("--backup-retention-period",backup.retention.period),""),
                 ifelse(!is.null(preferred.backup.window),paste("--preferred-backup-window",preferred.backup.window),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(multi.az,"--multi-az",""),
                 ifelse(no.multi.az,"--no-multi-az",""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(license.model),paste("--license-model",license.model),""),
                 ifelse(!is.null(iops),paste("--iops",iops),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(character.set.name),paste("--character-set-name",character.set.name),""),
                 ifelse(publicly.accessible,"--publicly-accessible",""),
                 ifelse(no.publicly.accessible,"--no-publicly-accessible",""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(storage.type),paste("--storage-type",storage.type),""),
                 ifelse(!is.null(tde.credential.arn),paste("--tde-credential-arn",tde.credential.arn),""),
                 ifelse(!is.null(tde.credential.password),paste("--tde-credential-password",tde.credential.password),""),
                 ifelse(storage.encrypted,"--storage-encrypted",""),
                 ifelse(no.storage.encrypted,"--no-storage-encrypted",""),
                 ifelse(!is.null(kms.key.id),paste("--kms-key-id",kms.key.id),""),
                 ifelse(copy.tags.to.snapshot,"--copy-tags-to-snapshot",""),
                 ifelse(no.copy.tags.to.snapshot,"--no-copy-tags-to-snapshot",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.instance.read.replica <- function (db.instance.identifier=NULL,source.db.instance.identifier=NULL,db.instance.class=NULL,availability.zone=NULL,port=NULL,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,iops=NULL,option.group.name=NULL,publicly.accessible=FALSE,no.publicly.accessible=FALSE,tags=NULL,db.subnet.group.name=NULL,storage.type=NULL,copy.tags.to.snapshot=FALSE,no.copy.tags.to.snapshot=FALSE,cli.input.json=NULL) {
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    if(publicly.accessible && no.publicly.accessible) stop("please set either publicly.accessible or no.publicly.accessible")
    if(copy.tags.to.snapshot && no.copy.tags.to.snapshot) stop("please set either copy.tags.to.snapshot or no.copy.tags.to.snapshot")
    cmd <- paste("aws rds create-db-instance-read-replica",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(source.db.instance.identifier),paste("--source-db-instance-identifier",source.db.instance.identifier),""),
                 ifelse(!is.null(db.instance.class),paste("--db-instance-class",db.instance.class),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(iops),paste("--iops",iops),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(publicly.accessible,"--publicly-accessible",""),
                 ifelse(no.publicly.accessible,"--no-publicly-accessible",""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(storage.type),paste("--storage-type",storage.type),""),
                 ifelse(copy.tags.to.snapshot,"--copy-tags-to-snapshot",""),
                 ifelse(no.copy.tags.to.snapshot,"--no-copy-tags-to-snapshot",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.parameter.group <- function (db.parameter.group.name=NULL,db.parameter.group.family=NULL,description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds create-db-parameter-group",
                 ifelse(!is.null(db.parameter.group.name),paste("--db-parameter-group-name",db.parameter.group.name),""),
                 ifelse(!is.null(db.parameter.group.family),paste("--db-parameter-group-family",db.parameter.group.family),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.security.group <- function (db.security.group.name=NULL,db.security.group.description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds create-db-security-group",
                 ifelse(!is.null(db.security.group.name),paste("--db-security-group-name",db.security.group.name),""),
                 ifelse(!is.null(db.security.group.description),paste("--db-security-group-description",db.security.group.description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.snapshot <- function (db.snapshot.identifier=NULL,db.instance.identifier=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds create-db-snapshot",
                 ifelse(!is.null(db.snapshot.identifier),paste("--db-snapshot-identifier",db.snapshot.identifier),""),
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.db.subnet.group <- function (db.subnet.group.name=NULL,db.subnet.group.description=NULL,subnet.ids=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds create-db-subnet-group",
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(db.subnet.group.description),paste("--db-subnet-group-description",db.subnet.group.description),""),
                 ifelse(!is.null(subnet.ids),paste("--subnet-ids",subnet.ids),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.event.subscription <- function (subscription.name=NULL,sns.topic.arn=NULL,source.type=NULL,event.categories=NULL,source.ids=NULL,enabled=FALSE,no.enabled=FALSE,tags=NULL,cli.input.json=NULL) {
    if(enabled && no.enabled) stop("please set either enabled or no.enabled")
    cmd <- paste("aws rds create-event-subscription",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(sns.topic.arn),paste("--sns-topic-arn",sns.topic.arn),""),
                 ifelse(!is.null(source.type),paste("--source-type",source.type),""),
                 ifelse(!is.null(event.categories),paste("--event-categories",event.categories),""),
                 ifelse(!is.null(source.ids),paste("--source-ids",source.ids),""),
                 ifelse(enabled,"--enabled",""),
                 ifelse(no.enabled,"--no-enabled",""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.create.option.group <- function (option.group.name=NULL,engine.name=NULL,major.engine.version=NULL,option.group.description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds create-option-group",
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(engine.name),paste("--engine-name",engine.name),""),
                 ifelse(!is.null(major.engine.version),paste("--major-engine-version",major.engine.version),""),
                 ifelse(!is.null(option.group.description),paste("--option-group-description",option.group.description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.db.cluster <- function (db.cluster.identifier=NULL,skip.final.snapshot=FALSE,no.skip.final.snapshot=FALSE,final.db.snapshot.identifier=NULL,cli.input.json=NULL) {
    if(skip.final.snapshot && no.skip.final.snapshot) stop("please set either skip.final.snapshot or no.skip.final.snapshot")
    cmd <- paste("aws rds delete-db-cluster",
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(skip.final.snapshot,"--skip-final-snapshot",""),
                 ifelse(no.skip.final.snapshot,"--no-skip-final-snapshot",""),
                 ifelse(!is.null(final.db.snapshot.identifier),paste("--final-db-snapshot-identifier",final.db.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.db.cluster.parameter.group <- function (db.cluster.parameter.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds delete-db-cluster-parameter-group",
                 ifelse(!is.null(db.cluster.parameter.group.name),paste("--db-cluster-parameter-group-name",db.cluster.parameter.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.db.cluster.snapshot <- function (db.cluster.snapshot.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds delete-db-cluster-snapshot",
                 ifelse(!is.null(db.cluster.snapshot.identifier),paste("--db-cluster-snapshot-identifier",db.cluster.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.db.instance <- function (db.instance.identifier=NULL,skip.final.snapshot=FALSE,no.skip.final.snapshot=FALSE,final.db.snapshot.identifier=NULL,cli.input.json=NULL) {
    if(skip.final.snapshot && no.skip.final.snapshot) stop("please set either skip.final.snapshot or no.skip.final.snapshot")
    cmd <- paste("aws rds delete-db-instance",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(skip.final.snapshot,"--skip-final-snapshot",""),
                 ifelse(no.skip.final.snapshot,"--no-skip-final-snapshot",""),
                 ifelse(!is.null(final.db.snapshot.identifier),paste("--final-db-snapshot-identifier",final.db.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.db.parameter.group <- function (db.parameter.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds delete-db-parameter-group",
                 ifelse(!is.null(db.parameter.group.name),paste("--db-parameter-group-name",db.parameter.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.db.security.group <- function (db.security.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds delete-db-security-group",
                 ifelse(!is.null(db.security.group.name),paste("--db-security-group-name",db.security.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.db.snapshot <- function (db.snapshot.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds delete-db-snapshot",
                 ifelse(!is.null(db.snapshot.identifier),paste("--db-snapshot-identifier",db.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.db.subnet.group <- function (db.subnet.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds delete-db-subnet-group",
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.event.subscription <- function (subscription.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds delete-event-subscription",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.delete.option.group <- function (option.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds delete-option-group",
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.account.attributes <- function (cli.input.json=NULL) {
    cmd <- paste("aws rds describe-account-attributes",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.certificates <- function (certificate.identifier=NULL,filters=NULL,max.records=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-certificates",
                 ifelse(!is.null(certificate.identifier),paste("--certificate-identifier",certificate.identifier),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.cluster.parameter.groups <- function (db.cluster.parameter.group.name=NULL,filters=NULL,max.records=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-db-cluster-parameter-groups",
                 ifelse(!is.null(db.cluster.parameter.group.name),paste("--db-cluster-parameter-group-name",db.cluster.parameter.group.name),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.cluster.parameters <- function (db.cluster.parameter.group.name=NULL,source=NULL,filters=NULL,max.records=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-db-cluster-parameters",
                 ifelse(!is.null(db.cluster.parameter.group.name),paste("--db-cluster-parameter-group-name",db.cluster.parameter.group.name),""),
                 ifelse(!is.null(source),paste("--source",source),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.cluster.snapshots <- function (db.cluster.identifier=NULL,db.cluster.snapshot.identifier=NULL,snapshot.type=NULL,filters=NULL,max.records=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-db-cluster-snapshots",
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(db.cluster.snapshot.identifier),paste("--db-cluster-snapshot-identifier",db.cluster.snapshot.identifier),""),
                 ifelse(!is.null(snapshot.type),paste("--snapshot-type",snapshot.type),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.clusters <- function (db.cluster.identifier=NULL,filters=NULL,max.records=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-db-clusters",
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.engine.versions <- function (engine=NULL,engine.version=NULL,db.parameter.group.family=NULL,filters=NULL,default.only=FALSE,no.default.only=FALSE,list.supported.character.sets=FALSE,no.list.supported.character.sets=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(default.only && no.default.only) stop("please set either default.only or no.default.only")
    if(list.supported.character.sets && no.list.supported.character.sets) stop("please set either list.supported.character.sets or no.list.supported.character.sets")
    cmd <- paste("aws rds describe-db-engine-versions",
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(!is.null(db.parameter.group.family),paste("--db-parameter-group-family",db.parameter.group.family),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(default.only,"--default-only",""),
                 ifelse(no.default.only,"--no-default-only",""),
                 ifelse(list.supported.character.sets,"--list-supported-character-sets",""),
                 ifelse(no.list.supported.character.sets,"--no-list-supported-character-sets",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.instances <- function (db.instance.identifier=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-db-instances",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.log.files <- function (db.instance.identifier=NULL,filename.contains=NULL,file.last.written=NULL,file.size=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-db-log-files",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(filename.contains),paste("--filename-contains",filename.contains),""),
                 ifelse(!is.null(file.last.written),paste("--file-last-written",file.last.written),""),
                 ifelse(!is.null(file.size),paste("--file-size",file.size),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.parameter.groups <- function (db.parameter.group.name=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-db-parameter-groups",
                 ifelse(!is.null(db.parameter.group.name),paste("--db-parameter-group-name",db.parameter.group.name),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.parameters <- function (db.parameter.group.name=NULL,source=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-db-parameters",
                 ifelse(!is.null(db.parameter.group.name),paste("--db-parameter-group-name",db.parameter.group.name),""),
                 ifelse(!is.null(source),paste("--source",source),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.security.groups <- function (db.security.group.name=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-db-security-groups",
                 ifelse(!is.null(db.security.group.name),paste("--db-security-group-name",db.security.group.name),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.snapshot.attributes <- function (db.snapshot.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-db-snapshot-attributes",
                 ifelse(!is.null(db.snapshot.identifier),paste("--db-snapshot-identifier",db.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.snapshots <- function (db.instance.identifier=NULL,db.snapshot.identifier=NULL,snapshot.type=NULL,filters=NULL,include.shared=FALSE,no.include.shared=FALSE,include.public=FALSE,no.include.public=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(include.shared && no.include.shared) stop("please set either include.shared or no.include.shared")
    if(include.public && no.include.public) stop("please set either include.public or no.include.public")
    cmd <- paste("aws rds describe-db-snapshots",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(db.snapshot.identifier),paste("--db-snapshot-identifier",db.snapshot.identifier),""),
                 ifelse(!is.null(snapshot.type),paste("--snapshot-type",snapshot.type),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(include.shared,"--include-shared",""),
                 ifelse(no.include.shared,"--no-include-shared",""),
                 ifelse(include.public,"--include-public",""),
                 ifelse(no.include.public,"--no-include-public",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.db.subnet.groups <- function (db.subnet.group.name=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-db-subnet-groups",
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.engine.default.cluster.parameters <- function (db.parameter.group.family=NULL,filters=NULL,max.records=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-engine-default-cluster-parameters",
                 ifelse(!is.null(db.parameter.group.family),paste("--db-parameter-group-family",db.parameter.group.family),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.engine.default.parameters <- function (db.parameter.group.family=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-engine-default-parameters",
                 ifelse(!is.null(db.parameter.group.family),paste("--db-parameter-group-family",db.parameter.group.family),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.event.categories <- function (source.type=NULL,filters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-event-categories",
                 ifelse(!is.null(source.type),paste("--source-type",source.type),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.event.subscriptions <- function (subscription.name=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-event-subscriptions",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.events <- function (source.identifier=NULL,source.type=NULL,start.time=NULL,end.time=NULL,duration=NULL,event.categories=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-events",
                 ifelse(!is.null(source.identifier),paste("--source-identifier",source.identifier),""),
                 ifelse(!is.null(source.type),paste("--source-type",source.type),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(duration),paste("--duration",duration),""),
                 ifelse(!is.null(event.categories),paste("--event-categories",event.categories),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.option.group.options <- function (engine.name=NULL,major.engine.version=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-option-group-options",
                 ifelse(!is.null(engine.name),paste("--engine-name",engine.name),""),
                 ifelse(!is.null(major.engine.version),paste("--major-engine-version",major.engine.version),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.option.groups <- function (option.group.name=NULL,filters=NULL,engine.name=NULL,major.engine.version=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds describe-option-groups",
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(engine.name),paste("--engine-name",engine.name),""),
                 ifelse(!is.null(major.engine.version),paste("--major-engine-version",major.engine.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.orderable.db.instance.options <- function (engine=NULL,engine.version=NULL,db.instance.class=NULL,license.model=NULL,vpc=FALSE,no.vpc=FALSE,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(vpc && no.vpc) stop("please set either vpc or no.vpc")
    cmd <- paste("aws rds describe-orderable-db-instance-options",
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(!is.null(db.instance.class),paste("--db-instance-class",db.instance.class),""),
                 ifelse(!is.null(license.model),paste("--license-model",license.model),""),
                 ifelse(vpc,"--vpc",""),
                 ifelse(no.vpc,"--no-vpc",""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.pending.maintenance.actions <- function (resource.identifier=NULL,filters=NULL,marker=NULL,max.records=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds describe-pending-maintenance-actions",
                 ifelse(!is.null(resource.identifier),paste("--resource-identifier",resource.identifier),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.describe.reserved.db.instances <- function (reserved.db.instance.id=NULL,reserved.db.instances.offering.id=NULL,db.instance.class=NULL,duration=NULL,product.description=NULL,offering.type=NULL,multi.az=FALSE,no.multi.az=FALSE,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(multi.az && no.multi.az) stop("please set either multi.az or no.multi.az")
    cmd <- paste("aws rds describe-reserved-db-instances",
                 ifelse(!is.null(reserved.db.instance.id),paste("--reserved-db-instance-id",reserved.db.instance.id),""),
                 ifelse(!is.null(reserved.db.instances.offering.id),paste("--reserved-db-instances-offering-id",reserved.db.instances.offering.id),""),
                 ifelse(!is.null(db.instance.class),paste("--db-instance-class",db.instance.class),""),
                 ifelse(!is.null(duration),paste("--duration",duration),""),
                 ifelse(!is.null(product.description),paste("--product-description",product.description),""),
                 ifelse(!is.null(offering.type),paste("--offering-type",offering.type),""),
                 ifelse(multi.az,"--multi-az",""),
                 ifelse(no.multi.az,"--no-multi-az",""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.describe.reserved.db.instances.offerings <- function (reserved.db.instances.offering.id=NULL,db.instance.class=NULL,duration=NULL,product.description=NULL,offering.type=NULL,multi.az=FALSE,no.multi.az=FALSE,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(multi.az && no.multi.az) stop("please set either multi.az or no.multi.az")
    cmd <- paste("aws rds describe-reserved-db-instances-offerings",
                 ifelse(!is.null(reserved.db.instances.offering.id),paste("--reserved-db-instances-offering-id",reserved.db.instances.offering.id),""),
                 ifelse(!is.null(db.instance.class),paste("--db-instance-class",db.instance.class),""),
                 ifelse(!is.null(duration),paste("--duration",duration),""),
                 ifelse(!is.null(product.description),paste("--product-description",product.description),""),
                 ifelse(!is.null(offering.type),paste("--offering-type",offering.type),""),
                 ifelse(multi.az,"--multi-az",""),
                 ifelse(no.multi.az,"--no-multi-az",""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.download.db.log.file.portion <- function (db.instance.identifier=NULL,log.file.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws rds download-db-log-file-portion",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(log.file.name),paste("--log-file-name",log.file.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
rds.failover.db.cluster <- function (db.cluster.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds failover-db-cluster",
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.list.tags.for.resource <- function (resource.name=NULL,filters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds list-tags-for-resource",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.modify.db.cluster <- function (db.cluster.identifier=NULL,new.db.cluster.identifier=NULL,apply.immediately=FALSE,no.apply.immediately=FALSE,backup.retention.period=NULL,db.cluster.parameter.group.name=NULL,vpc.security.group.ids=NULL,port=NULL,master.user.password=NULL,option.group.name=NULL,preferred.backup.window=NULL,preferred.maintenance.window=NULL,cli.input.json=NULL) {
    if(apply.immediately && no.apply.immediately) stop("please set either apply.immediately or no.apply.immediately")
    cmd <- paste("aws rds modify-db-cluster",
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(new.db.cluster.identifier),paste("--new-db-cluster-identifier",new.db.cluster.identifier),""),
                 ifelse(apply.immediately,"--apply-immediately",""),
                 ifelse(no.apply.immediately,"--no-apply-immediately",""),
                 ifelse(!is.null(backup.retention.period),paste("--backup-retention-period",backup.retention.period),""),
                 ifelse(!is.null(db.cluster.parameter.group.name),paste("--db-cluster-parameter-group-name",db.cluster.parameter.group.name),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(master.user.password),paste("--master-user-password",master.user.password),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(preferred.backup.window),paste("--preferred-backup-window",preferred.backup.window),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.modify.db.cluster.parameter.group <- function (db.cluster.parameter.group.name=NULL,parameters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds modify-db-cluster-parameter-group",
                 ifelse(!is.null(db.cluster.parameter.group.name),paste("--db-cluster-parameter-group-name",db.cluster.parameter.group.name),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.modify.db.instance <- function (db.instance.identifier=NULL,allocated.storage=NULL,db.instance.class=NULL,db.security.groups=NULL,vpc.security.group.ids=NULL,apply.immediately=FALSE,no.apply.immediately=FALSE,master.user.password=NULL,db.parameter.group.name=NULL,backup.retention.period=NULL,preferred.backup.window=NULL,preferred.maintenance.window=NULL,multi.az=FALSE,no.multi.az=FALSE,engine.version=NULL,allow.major.version.upgrade=FALSE,no.allow.major.version.upgrade=FALSE,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,iops=NULL,option.group.name=NULL,new.db.instance.identifier=NULL,storage.type=NULL,tde.credential.arn=NULL,tde.credential.password=NULL,ca.certificate.identifier=NULL,copy.tags.to.snapshot=FALSE,no.copy.tags.to.snapshot=FALSE,publicly.accessible=FALSE,no.publicly.accessible=FALSE,cli.input.json=NULL) {
    if(apply.immediately && no.apply.immediately) stop("please set either apply.immediately or no.apply.immediately")
    if(multi.az && no.multi.az) stop("please set either multi.az or no.multi.az")
    if(allow.major.version.upgrade && no.allow.major.version.upgrade) stop("please set either allow.major.version.upgrade or no.allow.major.version.upgrade")
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    if(copy.tags.to.snapshot && no.copy.tags.to.snapshot) stop("please set either copy.tags.to.snapshot or no.copy.tags.to.snapshot")
    if(publicly.accessible && no.publicly.accessible) stop("please set either publicly.accessible or no.publicly.accessible")
    cmd <- paste("aws rds modify-db-instance",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(allocated.storage),paste("--allocated-storage",allocated.storage),""),
                 ifelse(!is.null(db.instance.class),paste("--db-instance-class",db.instance.class),""),
                 ifelse(!is.null(db.security.groups),paste("--db-security-groups",db.security.groups),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(apply.immediately,"--apply-immediately",""),
                 ifelse(no.apply.immediately,"--no-apply-immediately",""),
                 ifelse(!is.null(master.user.password),paste("--master-user-password",master.user.password),""),
                 ifelse(!is.null(db.parameter.group.name),paste("--db-parameter-group-name",db.parameter.group.name),""),
                 ifelse(!is.null(backup.retention.period),paste("--backup-retention-period",backup.retention.period),""),
                 ifelse(!is.null(preferred.backup.window),paste("--preferred-backup-window",preferred.backup.window),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(multi.az,"--multi-az",""),
                 ifelse(no.multi.az,"--no-multi-az",""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(allow.major.version.upgrade,"--allow-major-version-upgrade",""),
                 ifelse(no.allow.major.version.upgrade,"--no-allow-major-version-upgrade",""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(iops),paste("--iops",iops),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(new.db.instance.identifier),paste("--new-db-instance-identifier",new.db.instance.identifier),""),
                 ifelse(!is.null(storage.type),paste("--storage-type",storage.type),""),
                 ifelse(!is.null(tde.credential.arn),paste("--tde-credential-arn",tde.credential.arn),""),
                 ifelse(!is.null(tde.credential.password),paste("--tde-credential-password",tde.credential.password),""),
                 ifelse(!is.null(ca.certificate.identifier),paste("--ca-certificate-identifier",ca.certificate.identifier),""),
                 ifelse(copy.tags.to.snapshot,"--copy-tags-to-snapshot",""),
                 ifelse(no.copy.tags.to.snapshot,"--no-copy-tags-to-snapshot",""),
                 ifelse(publicly.accessible,"--publicly-accessible",""),
                 ifelse(no.publicly.accessible,"--no-publicly-accessible",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.modify.db.parameter.group <- function (db.parameter.group.name=NULL,parameters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds modify-db-parameter-group",
                 ifelse(!is.null(db.parameter.group.name),paste("--db-parameter-group-name",db.parameter.group.name),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.modify.db.snapshot.attribute <- function (db.snapshot.identifier=NULL,attribute.name=NULL,values.to.add=NULL,values.to.remove=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds modify-db-snapshot-attribute",
                 ifelse(!is.null(db.snapshot.identifier),paste("--db-snapshot-identifier",db.snapshot.identifier),""),
                 ifelse(!is.null(attribute.name),paste("--attribute-name",attribute.name),""),
                 ifelse(!is.null(values.to.add),paste("--values-to-add",values.to.add),""),
                 ifelse(!is.null(values.to.remove),paste("--values-to-remove",values.to.remove),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.modify.db.subnet.group <- function (db.subnet.group.name=NULL,db.subnet.group.description=NULL,subnet.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds modify-db-subnet-group",
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(db.subnet.group.description),paste("--db-subnet-group-description",db.subnet.group.description),""),
                 ifelse(!is.null(subnet.ids),paste("--subnet-ids",subnet.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.modify.event.subscription <- function (subscription.name=NULL,sns.topic.arn=NULL,source.type=NULL,event.categories=NULL,enabled=FALSE,no.enabled=FALSE,cli.input.json=NULL) {
    if(enabled && no.enabled) stop("please set either enabled or no.enabled")
    cmd <- paste("aws rds modify-event-subscription",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(sns.topic.arn),paste("--sns-topic-arn",sns.topic.arn),""),
                 ifelse(!is.null(source.type),paste("--source-type",source.type),""),
                 ifelse(!is.null(event.categories),paste("--event-categories",event.categories),""),
                 ifelse(enabled,"--enabled",""),
                 ifelse(no.enabled,"--no-enabled",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.promote.read.replica <- function (db.instance.identifier=NULL,backup.retention.period=NULL,preferred.backup.window=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds promote-read-replica",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(backup.retention.period),paste("--backup-retention-period",backup.retention.period),""),
                 ifelse(!is.null(preferred.backup.window),paste("--preferred-backup-window",preferred.backup.window),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.purchase.reserved.db.instances.offering <- function (reserved.db.instances.offering.id=NULL,reserved.db.instance.id=NULL,db.instance.count=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds purchase-reserved-db-instances-offering",
                 ifelse(!is.null(reserved.db.instances.offering.id),paste("--reserved-db-instances-offering-id",reserved.db.instances.offering.id),""),
                 ifelse(!is.null(reserved.db.instance.id),paste("--reserved-db-instance-id",reserved.db.instance.id),""),
                 ifelse(!is.null(db.instance.count),paste("--db-instance-count",db.instance.count),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.reboot.db.instance <- function (db.instance.identifier=NULL,force.failover=FALSE,no.force.failover=FALSE,cli.input.json=NULL) {
    if(force.failover && no.force.failover) stop("please set either force.failover or no.force.failover")
    cmd <- paste("aws rds reboot-db-instance",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(force.failover,"--force-failover",""),
                 ifelse(no.force.failover,"--no-force-failover",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.remove.option.from.option.group <- function (option.group.name=NULL,apply.immediately=FALSE,no.apply.immediately=FALSE,options=NULL,cli.input.json=NULL) {
    if(apply.immediately && no.apply.immediately) stop("please set either apply.immediately or no.apply.immediately")
    cmd <- paste("aws rds remove-option-from-option-group",
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(apply.immediately,"--apply-immediately",""),
                 ifelse(no.apply.immediately,"--no-apply-immediately",""),
                 ifelse(!is.null(options),paste("--options",options),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.remove.source.identifier.from.subscription <- function (subscription.name=NULL,source.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds remove-source-identifier-from-subscription",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(source.identifier),paste("--source-identifier",source.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.remove.tags.from.resource <- function (resource.name=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds remove-tags-from-resource",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.reset.db.cluster.parameter.group <- function (db.cluster.parameter.group.name=NULL,reset.all.parameters=FALSE,no.reset.all.parameters=FALSE,parameters=NULL,cli.input.json=NULL) {
    if(reset.all.parameters && no.reset.all.parameters) stop("please set either reset.all.parameters or no.reset.all.parameters")
    cmd <- paste("aws rds reset-db-cluster-parameter-group",
                 ifelse(!is.null(db.cluster.parameter.group.name),paste("--db-cluster-parameter-group-name",db.cluster.parameter.group.name),""),
                 ifelse(reset.all.parameters,"--reset-all-parameters",""),
                 ifelse(no.reset.all.parameters,"--no-reset-all-parameters",""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.reset.db.parameter.group <- function (db.parameter.group.name=NULL,reset.all.parameters=FALSE,no.reset.all.parameters=FALSE,parameters=NULL,cli.input.json=NULL) {
    if(reset.all.parameters && no.reset.all.parameters) stop("please set either reset.all.parameters or no.reset.all.parameters")
    cmd <- paste("aws rds reset-db-parameter-group",
                 ifelse(!is.null(db.parameter.group.name),paste("--db-parameter-group-name",db.parameter.group.name),""),
                 ifelse(reset.all.parameters,"--reset-all-parameters",""),
                 ifelse(no.reset.all.parameters,"--no-reset-all-parameters",""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.restore.db.cluster.from.snapshot <- function (availability.zones=NULL,db.cluster.identifier=NULL,snapshot.identifier=NULL,engine=NULL,engine.version=NULL,port=NULL,db.subnet.group.name=NULL,database.name=NULL,option.group.name=NULL,vpc.security.group.ids=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds restore-db-cluster-from-snapshot",
                 ifelse(!is.null(availability.zones),paste("--availability-zones",availability.zones),""),
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(snapshot.identifier),paste("--snapshot-identifier",snapshot.identifier),""),
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(database.name),paste("--database-name",database.name),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.restore.db.cluster.to.point.in.time <- function (db.cluster.identifier=NULL,source.db.cluster.identifier=NULL,restore.to.time=NULL,use.latest.restorable.time=FALSE,no.use.latest.restorable.time=FALSE,port=NULL,db.subnet.group.name=NULL,option.group.name=NULL,vpc.security.group.ids=NULL,tags=NULL,cli.input.json=NULL) {
    if(use.latest.restorable.time && no.use.latest.restorable.time) stop("please set either use.latest.restorable.time or no.use.latest.restorable.time")
    cmd <- paste("aws rds restore-db-cluster-to-point-in-time",
                 ifelse(!is.null(db.cluster.identifier),paste("--db-cluster-identifier",db.cluster.identifier),""),
                 ifelse(!is.null(source.db.cluster.identifier),paste("--source-db-cluster-identifier",source.db.cluster.identifier),""),
                 ifelse(!is.null(restore.to.time),paste("--restore-to-time",restore.to.time),""),
                 ifelse(use.latest.restorable.time,"--use-latest-restorable-time",""),
                 ifelse(no.use.latest.restorable.time,"--no-use-latest-restorable-time",""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.restore.db.instance.from.db.snapshot <- function (db.instance.identifier=NULL,db.snapshot.identifier=NULL,db.instance.class=NULL,port=NULL,availability.zone=NULL,db.subnet.group.name=NULL,multi.az=FALSE,no.multi.az=FALSE,publicly.accessible=FALSE,no.publicly.accessible=FALSE,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,license.model=NULL,db.name=NULL,engine=NULL,iops=NULL,option.group.name=NULL,tags=NULL,storage.type=NULL,tde.credential.arn=NULL,tde.credential.password=NULL,copy.tags.to.snapshot=FALSE,no.copy.tags.to.snapshot=FALSE,cli.input.json=NULL) {
    if(multi.az && no.multi.az) stop("please set either multi.az or no.multi.az")
    if(publicly.accessible && no.publicly.accessible) stop("please set either publicly.accessible or no.publicly.accessible")
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    if(copy.tags.to.snapshot && no.copy.tags.to.snapshot) stop("please set either copy.tags.to.snapshot or no.copy.tags.to.snapshot")
    cmd <- paste("aws rds restore-db-instance-from-db-snapshot",
                 ifelse(!is.null(db.instance.identifier),paste("--db-instance-identifier",db.instance.identifier),""),
                 ifelse(!is.null(db.snapshot.identifier),paste("--db-snapshot-identifier",db.snapshot.identifier),""),
                 ifelse(!is.null(db.instance.class),paste("--db-instance-class",db.instance.class),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(multi.az,"--multi-az",""),
                 ifelse(no.multi.az,"--no-multi-az",""),
                 ifelse(publicly.accessible,"--publicly-accessible",""),
                 ifelse(no.publicly.accessible,"--no-publicly-accessible",""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(license.model),paste("--license-model",license.model),""),
                 ifelse(!is.null(db.name),paste("--db-name",db.name),""),
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(iops),paste("--iops",iops),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(storage.type),paste("--storage-type",storage.type),""),
                 ifelse(!is.null(tde.credential.arn),paste("--tde-credential-arn",tde.credential.arn),""),
                 ifelse(!is.null(tde.credential.password),paste("--tde-credential-password",tde.credential.password),""),
                 ifelse(copy.tags.to.snapshot,"--copy-tags-to-snapshot",""),
                 ifelse(no.copy.tags.to.snapshot,"--no-copy-tags-to-snapshot",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.restore.db.instance.to.point.in.time <- function (source.db.instance.identifier=NULL,target.db.instance.identifier=NULL,restore.time=NULL,use.latest.restorable.time=FALSE,no.use.latest.restorable.time=FALSE,db.instance.class=NULL,port=NULL,availability.zone=NULL,db.subnet.group.name=NULL,multi.az=FALSE,no.multi.az=FALSE,publicly.accessible=FALSE,no.publicly.accessible=FALSE,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,license.model=NULL,db.name=NULL,engine=NULL,iops=NULL,option.group.name=NULL,copy.tags.to.snapshot=FALSE,no.copy.tags.to.snapshot=FALSE,tags=NULL,storage.type=NULL,tde.credential.arn=NULL,tde.credential.password=NULL,cli.input.json=NULL) {
    if(use.latest.restorable.time && no.use.latest.restorable.time) stop("please set either use.latest.restorable.time or no.use.latest.restorable.time")
    if(multi.az && no.multi.az) stop("please set either multi.az or no.multi.az")
    if(publicly.accessible && no.publicly.accessible) stop("please set either publicly.accessible or no.publicly.accessible")
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    if(copy.tags.to.snapshot && no.copy.tags.to.snapshot) stop("please set either copy.tags.to.snapshot or no.copy.tags.to.snapshot")
    cmd <- paste("aws rds restore-db-instance-to-point-in-time",
                 ifelse(!is.null(source.db.instance.identifier),paste("--source-db-instance-identifier",source.db.instance.identifier),""),
                 ifelse(!is.null(target.db.instance.identifier),paste("--target-db-instance-identifier",target.db.instance.identifier),""),
                 ifelse(!is.null(restore.time),paste("--restore-time",restore.time),""),
                 ifelse(use.latest.restorable.time,"--use-latest-restorable-time",""),
                 ifelse(no.use.latest.restorable.time,"--no-use-latest-restorable-time",""),
                 ifelse(!is.null(db.instance.class),paste("--db-instance-class",db.instance.class),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(db.subnet.group.name),paste("--db-subnet-group-name",db.subnet.group.name),""),
                 ifelse(multi.az,"--multi-az",""),
                 ifelse(no.multi.az,"--no-multi-az",""),
                 ifelse(publicly.accessible,"--publicly-accessible",""),
                 ifelse(no.publicly.accessible,"--no-publicly-accessible",""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(license.model),paste("--license-model",license.model),""),
                 ifelse(!is.null(db.name),paste("--db-name",db.name),""),
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(iops),paste("--iops",iops),""),
                 ifelse(!is.null(option.group.name),paste("--option-group-name",option.group.name),""),
                 ifelse(copy.tags.to.snapshot,"--copy-tags-to-snapshot",""),
                 ifelse(no.copy.tags.to.snapshot,"--no-copy-tags-to-snapshot",""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(storage.type),paste("--storage-type",storage.type),""),
                 ifelse(!is.null(tde.credential.arn),paste("--tde-credential-arn",tde.credential.arn),""),
                 ifelse(!is.null(tde.credential.password),paste("--tde-credential-password",tde.credential.password),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
rds.revoke.db.security.group.ingress <- function (db.security.group.name=NULL,cidrip=NULL,ec2.security.group.name=NULL,ec2.security.group.id=NULL,ec2.security.group.owner.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws rds revoke-db-security-group-ingress",
                 ifelse(!is.null(db.security.group.name),paste("--db-security-group-name",db.security.group.name),""),
                 ifelse(!is.null(cidrip),paste("--cidrip",cidrip),""),
                 ifelse(!is.null(ec2.security.group.name),paste("--ec2-security-group-name",ec2.security.group.name),""),
                 ifelse(!is.null(ec2.security.group.id),paste("--ec2-security-group-id",ec2.security.group.id),""),
                 ifelse(!is.null(ec2.security.group.owner.id),paste("--ec2-security-group-owner-id",ec2.security.group.owner.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
