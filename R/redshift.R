redshift.authorize.cluster.security.group.ingress <- function (cluster.security.group.name=NULL,cidrip=NULL,ec2.security.group.name=NULL,ec2.security.group.owner.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift authorize-cluster-security-group-ingress",
                 ifelse(!is.null(cluster.security.group.name),paste("--cluster-security-group-name",cluster.security.group.name),""),
                 ifelse(!is.null(cidrip),paste("--cidrip",cidrip),""),
                 ifelse(!is.null(ec2.security.group.name),paste("--ec2-security-group-name",ec2.security.group.name),""),
                 ifelse(!is.null(ec2.security.group.owner.id),paste("--ec2-security-group-owner-id",ec2.security.group.owner.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.authorize.snapshot.access <- function (snapshot.identifier=NULL,snapshot.cluster.identifier=NULL,account.with.restore.access=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift authorize-snapshot-access",
                 ifelse(!is.null(snapshot.identifier),paste("--snapshot-identifier",snapshot.identifier),""),
                 ifelse(!is.null(snapshot.cluster.identifier),paste("--snapshot-cluster-identifier",snapshot.cluster.identifier),""),
                 ifelse(!is.null(account.with.restore.access),paste("--account-with-restore-access",account.with.restore.access),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.copy.cluster.snapshot <- function (source.snapshot.identifier=NULL,source.snapshot.cluster.identifier=NULL,target.snapshot.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift copy-cluster-snapshot",
                 ifelse(!is.null(source.snapshot.identifier),paste("--source-snapshot-identifier",source.snapshot.identifier),""),
                 ifelse(!is.null(source.snapshot.cluster.identifier),paste("--source-snapshot-cluster-identifier",source.snapshot.cluster.identifier),""),
                 ifelse(!is.null(target.snapshot.identifier),paste("--target-snapshot-identifier",target.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.cluster <- function (db.name=NULL,cluster.identifier=NULL,cluster.type=NULL,node.type=NULL,master.username=NULL,master.user.password=NULL,cluster.security.groups=NULL,vpc.security.group.ids=NULL,cluster.subnet.group.name=NULL,availability.zone=NULL,preferred.maintenance.window=NULL,cluster.parameter.group.name=NULL,automated.snapshot.retention.period=NULL,port=NULL,cluster.version=NULL,allow.version.upgrade=FALSE,no.allow.version.upgrade=FALSE,number.of.nodes=NULL,publicly.accessible=FALSE,no.publicly.accessible=FALSE,encrypted=FALSE,no.encrypted=FALSE,hsm.client.certificate.identifier=NULL,hsm.configuration.identifier=NULL,elastic.ip=NULL,tags=NULL,kms.key.id=NULL,cli.input.json=NULL) {
    if(allow.version.upgrade && no.allow.version.upgrade) stop("please set either allow.version.upgrade or no.allow.version.upgrade")
    if(publicly.accessible && no.publicly.accessible) stop("please set either publicly.accessible or no.publicly.accessible")
    if(encrypted && no.encrypted) stop("please set either encrypted or no.encrypted")
    cmd <- paste("aws redshift create-cluster",
                 ifelse(!is.null(db.name),paste("--db-name",db.name),""),
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(cluster.type),paste("--cluster-type",cluster.type),""),
                 ifelse(!is.null(node.type),paste("--node-type",node.type),""),
                 ifelse(!is.null(master.username),paste("--master-username",master.username),""),
                 ifelse(!is.null(master.user.password),paste("--master-user-password",master.user.password),""),
                 ifelse(!is.null(cluster.security.groups),paste("--cluster-security-groups",cluster.security.groups),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(!is.null(cluster.subnet.group.name),paste("--cluster-subnet-group-name",cluster.subnet.group.name),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(cluster.parameter.group.name),paste("--cluster-parameter-group-name",cluster.parameter.group.name),""),
                 ifelse(!is.null(automated.snapshot.retention.period),paste("--automated-snapshot-retention-period",automated.snapshot.retention.period),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(cluster.version),paste("--cluster-version",cluster.version),""),
                 ifelse(allow.version.upgrade,"--allow-version-upgrade",""),
                 ifelse(no.allow.version.upgrade,"--no-allow-version-upgrade",""),
                 ifelse(!is.null(number.of.nodes),paste("--number-of-nodes",number.of.nodes),""),
                 ifelse(publicly.accessible,"--publicly-accessible",""),
                 ifelse(no.publicly.accessible,"--no-publicly-accessible",""),
                 ifelse(encrypted,"--encrypted",""),
                 ifelse(no.encrypted,"--no-encrypted",""),
                 ifelse(!is.null(hsm.client.certificate.identifier),paste("--hsm-client-certificate-identifier",hsm.client.certificate.identifier),""),
                 ifelse(!is.null(hsm.configuration.identifier),paste("--hsm-configuration-identifier",hsm.configuration.identifier),""),
                 ifelse(!is.null(elastic.ip),paste("--elastic-ip",elastic.ip),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(kms.key.id),paste("--kms-key-id",kms.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.cluster.parameter.group <- function (parameter.group.name=NULL,parameter.group.family=NULL,description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift create-cluster-parameter-group",
                 ifelse(!is.null(parameter.group.name),paste("--parameter-group-name",parameter.group.name),""),
                 ifelse(!is.null(parameter.group.family),paste("--parameter-group-family",parameter.group.family),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.cluster.security.group <- function (cluster.security.group.name=NULL,description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift create-cluster-security-group",
                 ifelse(!is.null(cluster.security.group.name),paste("--cluster-security-group-name",cluster.security.group.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.cluster.snapshot <- function (snapshot.identifier=NULL,cluster.identifier=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift create-cluster-snapshot",
                 ifelse(!is.null(snapshot.identifier),paste("--snapshot-identifier",snapshot.identifier),""),
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.cluster.subnet.group <- function (cluster.subnet.group.name=NULL,description=NULL,subnet.ids=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift create-cluster-subnet-group",
                 ifelse(!is.null(cluster.subnet.group.name),paste("--cluster-subnet-group-name",cluster.subnet.group.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(subnet.ids),paste("--subnet-ids",subnet.ids),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.event.subscription <- function (subscription.name=NULL,sns.topic.arn=NULL,source.type=NULL,source.ids=NULL,event.categories=NULL,severity=NULL,enabled=FALSE,no.enabled=FALSE,tags=NULL,cli.input.json=NULL) {
    if(enabled && no.enabled) stop("please set either enabled or no.enabled")
    cmd <- paste("aws redshift create-event-subscription",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(sns.topic.arn),paste("--sns-topic-arn",sns.topic.arn),""),
                 ifelse(!is.null(source.type),paste("--source-type",source.type),""),
                 ifelse(!is.null(source.ids),paste("--source-ids",source.ids),""),
                 ifelse(!is.null(event.categories),paste("--event-categories",event.categories),""),
                 ifelse(!is.null(severity),paste("--severity",severity),""),
                 ifelse(enabled,"--enabled",""),
                 ifelse(no.enabled,"--no-enabled",""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.hsm.client.certificate <- function (hsm.client.certificate.identifier=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift create-hsm-client-certificate",
                 ifelse(!is.null(hsm.client.certificate.identifier),paste("--hsm-client-certificate-identifier",hsm.client.certificate.identifier),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.hsm.configuration <- function (hsm.configuration.identifier=NULL,description=NULL,hsm.ip.address=NULL,hsm.partition.name=NULL,hsm.partition.password=NULL,hsm.server.public.certificate=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift create-hsm-configuration",
                 ifelse(!is.null(hsm.configuration.identifier),paste("--hsm-configuration-identifier",hsm.configuration.identifier),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(hsm.ip.address),paste("--hsm-ip-address",hsm.ip.address),""),
                 ifelse(!is.null(hsm.partition.name),paste("--hsm-partition-name",hsm.partition.name),""),
                 ifelse(!is.null(hsm.partition.password),paste("--hsm-partition-password",hsm.partition.password),""),
                 ifelse(!is.null(hsm.server.public.certificate),paste("--hsm-server-public-certificate",hsm.server.public.certificate),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.snapshot.copy.grant <- function (snapshot.copy.grant.name=NULL,kms.key.id=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift create-snapshot-copy-grant",
                 ifelse(!is.null(snapshot.copy.grant.name),paste("--snapshot-copy-grant-name",snapshot.copy.grant.name),""),
                 ifelse(!is.null(kms.key.id),paste("--kms-key-id",kms.key.id),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.create.tags <- function (resource.name=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift create-tags",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.cluster <- function (cluster.identifier=NULL,skip.final.cluster.snapshot=FALSE,no.skip.final.cluster.snapshot=FALSE,final.cluster.snapshot.identifier=NULL,cli.input.json=NULL) {
    if(skip.final.cluster.snapshot && no.skip.final.cluster.snapshot) stop("please set either skip.final.cluster.snapshot or no.skip.final.cluster.snapshot")
    cmd <- paste("aws redshift delete-cluster",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(skip.final.cluster.snapshot,"--skip-final-cluster-snapshot",""),
                 ifelse(no.skip.final.cluster.snapshot,"--no-skip-final-cluster-snapshot",""),
                 ifelse(!is.null(final.cluster.snapshot.identifier),paste("--final-cluster-snapshot-identifier",final.cluster.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.cluster.parameter.group <- function (parameter.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-cluster-parameter-group",
                 ifelse(!is.null(parameter.group.name),paste("--parameter-group-name",parameter.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.cluster.security.group <- function (cluster.security.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-cluster-security-group",
                 ifelse(!is.null(cluster.security.group.name),paste("--cluster-security-group-name",cluster.security.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.cluster.snapshot <- function (snapshot.identifier=NULL,snapshot.cluster.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-cluster-snapshot",
                 ifelse(!is.null(snapshot.identifier),paste("--snapshot-identifier",snapshot.identifier),""),
                 ifelse(!is.null(snapshot.cluster.identifier),paste("--snapshot-cluster-identifier",snapshot.cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.cluster.subnet.group <- function (cluster.subnet.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-cluster-subnet-group",
                 ifelse(!is.null(cluster.subnet.group.name),paste("--cluster-subnet-group-name",cluster.subnet.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.event.subscription <- function (subscription.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-event-subscription",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.hsm.client.certificate <- function (hsm.client.certificate.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-hsm-client-certificate",
                 ifelse(!is.null(hsm.client.certificate.identifier),paste("--hsm-client-certificate-identifier",hsm.client.certificate.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.hsm.configuration <- function (hsm.configuration.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-hsm-configuration",
                 ifelse(!is.null(hsm.configuration.identifier),paste("--hsm-configuration-identifier",hsm.configuration.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.snapshot.copy.grant <- function (snapshot.copy.grant.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-snapshot-copy-grant",
                 ifelse(!is.null(snapshot.copy.grant.name),paste("--snapshot-copy-grant-name",snapshot.copy.grant.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.delete.tags <- function (resource.name=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift delete-tags",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.cluster.parameter.groups <- function (parameter.group.name=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-cluster-parameter-groups",
                 ifelse(!is.null(parameter.group.name),paste("--parameter-group-name",parameter.group.name),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.cluster.parameters <- function (parameter.group.name=NULL,source=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-cluster-parameters",
                 ifelse(!is.null(parameter.group.name),paste("--parameter-group-name",parameter.group.name),""),
                 ifelse(!is.null(source),paste("--source",source),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.cluster.security.groups <- function (cluster.security.group.name=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-cluster-security-groups",
                 ifelse(!is.null(cluster.security.group.name),paste("--cluster-security-group-name",cluster.security.group.name),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.cluster.snapshots <- function (cluster.identifier=NULL,snapshot.identifier=NULL,snapshot.type=NULL,start.time=NULL,end.time=NULL,owner.account=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-cluster-snapshots",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(snapshot.identifier),paste("--snapshot-identifier",snapshot.identifier),""),
                 ifelse(!is.null(snapshot.type),paste("--snapshot-type",snapshot.type),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(owner.account),paste("--owner-account",owner.account),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.cluster.subnet.groups <- function (cluster.subnet.group.name=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-cluster-subnet-groups",
                 ifelse(!is.null(cluster.subnet.group.name),paste("--cluster-subnet-group-name",cluster.subnet.group.name),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.cluster.versions <- function (cluster.version=NULL,cluster.parameter.group.family=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-cluster-versions",
                 ifelse(!is.null(cluster.version),paste("--cluster-version",cluster.version),""),
                 ifelse(!is.null(cluster.parameter.group.family),paste("--cluster-parameter-group-family",cluster.parameter.group.family),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.clusters <- function (cluster.identifier=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-clusters",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.default.cluster.parameters <- function (parameter.group.family=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-default-cluster-parameters",
                 ifelse(!is.null(parameter.group.family),paste("--parameter-group-family",parameter.group.family),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.event.categories <- function (source.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift describe-event-categories",
                 ifelse(!is.null(source.type),paste("--source-type",source.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.event.subscriptions <- function (subscription.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-event-subscriptions",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.events <- function (source.identifier=NULL,source.type=NULL,start.time=NULL,end.time=NULL,duration=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-events",
                 ifelse(!is.null(source.identifier),paste("--source-identifier",source.identifier),""),
                 ifelse(!is.null(source.type),paste("--source-type",source.type),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(duration),paste("--duration",duration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.hsm.client.certificates <- function (hsm.client.certificate.identifier=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-hsm-client-certificates",
                 ifelse(!is.null(hsm.client.certificate.identifier),paste("--hsm-client-certificate-identifier",hsm.client.certificate.identifier),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.hsm.configurations <- function (hsm.configuration.identifier=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-hsm-configurations",
                 ifelse(!is.null(hsm.configuration.identifier),paste("--hsm-configuration-identifier",hsm.configuration.identifier),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.logging.status <- function (cluster.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift describe-logging-status",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.orderable.cluster.options <- function (cluster.version=NULL,node.type=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-orderable-cluster-options",
                 ifelse(!is.null(cluster.version),paste("--cluster-version",cluster.version),""),
                 ifelse(!is.null(node.type),paste("--node-type",node.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.reserved.node.offerings <- function (reserved.node.offering.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-reserved-node-offerings",
                 ifelse(!is.null(reserved.node.offering.id),paste("--reserved-node-offering-id",reserved.node.offering.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.reserved.nodes <- function (reserved.node.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws redshift describe-reserved-nodes",
                 ifelse(!is.null(reserved.node.id),paste("--reserved-node-id",reserved.node.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.resize <- function (cluster.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift describe-resize",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.snapshot.copy.grants <- function (snapshot.copy.grant.name=NULL,max.records=NULL,marker=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift describe-snapshot-copy-grants",
                 ifelse(!is.null(snapshot.copy.grant.name),paste("--snapshot-copy-grant-name",snapshot.copy.grant.name),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.describe.tags <- function (resource.name=NULL,resource.type=NULL,max.records=NULL,marker=NULL,tag.keys=NULL,tag.values=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift describe-tags",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(tag.values),paste("--tag-values",tag.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.disable.logging <- function (cluster.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift disable-logging",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.disable.snapshot.copy <- function (cluster.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift disable-snapshot-copy",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.enable.logging <- function (cluster.identifier=NULL,bucket.name=NULL,s3.key.prefix=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift enable-logging",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(bucket.name),paste("--bucket-name",bucket.name),""),
                 ifelse(!is.null(s3.key.prefix),paste("--s3-key-prefix",s3.key.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.enable.snapshot.copy <- function (cluster.identifier=NULL,destination.region=NULL,retention.period=NULL,snapshot.copy.grant.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift enable-snapshot-copy",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(destination.region),paste("--destination-region",destination.region),""),
                 ifelse(!is.null(retention.period),paste("--retention-period",retention.period),""),
                 ifelse(!is.null(snapshot.copy.grant.name),paste("--snapshot-copy-grant-name",snapshot.copy.grant.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.modify.cluster <- function (cluster.identifier=NULL,cluster.type=NULL,node.type=NULL,number.of.nodes=NULL,cluster.security.groups=NULL,vpc.security.group.ids=NULL,master.user.password=NULL,cluster.parameter.group.name=NULL,automated.snapshot.retention.period=NULL,preferred.maintenance.window=NULL,cluster.version=NULL,allow.version.upgrade=FALSE,no.allow.version.upgrade=FALSE,hsm.client.certificate.identifier=NULL,hsm.configuration.identifier=NULL,new.cluster.identifier=NULL,cli.input.json=NULL) {
    if(allow.version.upgrade && no.allow.version.upgrade) stop("please set either allow.version.upgrade or no.allow.version.upgrade")
    cmd <- paste("aws redshift modify-cluster",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(cluster.type),paste("--cluster-type",cluster.type),""),
                 ifelse(!is.null(node.type),paste("--node-type",node.type),""),
                 ifelse(!is.null(number.of.nodes),paste("--number-of-nodes",number.of.nodes),""),
                 ifelse(!is.null(cluster.security.groups),paste("--cluster-security-groups",cluster.security.groups),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(!is.null(master.user.password),paste("--master-user-password",master.user.password),""),
                 ifelse(!is.null(cluster.parameter.group.name),paste("--cluster-parameter-group-name",cluster.parameter.group.name),""),
                 ifelse(!is.null(automated.snapshot.retention.period),paste("--automated-snapshot-retention-period",automated.snapshot.retention.period),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(cluster.version),paste("--cluster-version",cluster.version),""),
                 ifelse(allow.version.upgrade,"--allow-version-upgrade",""),
                 ifelse(no.allow.version.upgrade,"--no-allow-version-upgrade",""),
                 ifelse(!is.null(hsm.client.certificate.identifier),paste("--hsm-client-certificate-identifier",hsm.client.certificate.identifier),""),
                 ifelse(!is.null(hsm.configuration.identifier),paste("--hsm-configuration-identifier",hsm.configuration.identifier),""),
                 ifelse(!is.null(new.cluster.identifier),paste("--new-cluster-identifier",new.cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.modify.cluster.parameter.group <- function (parameter.group.name=NULL,parameters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift modify-cluster-parameter-group",
                 ifelse(!is.null(parameter.group.name),paste("--parameter-group-name",parameter.group.name),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.modify.cluster.subnet.group <- function (cluster.subnet.group.name=NULL,description=NULL,subnet.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift modify-cluster-subnet-group",
                 ifelse(!is.null(cluster.subnet.group.name),paste("--cluster-subnet-group-name",cluster.subnet.group.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(subnet.ids),paste("--subnet-ids",subnet.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.modify.event.subscription <- function (subscription.name=NULL,sns.topic.arn=NULL,source.type=NULL,source.ids=NULL,event.categories=NULL,severity=NULL,enabled=FALSE,no.enabled=FALSE,cli.input.json=NULL) {
    if(enabled && no.enabled) stop("please set either enabled or no.enabled")
    cmd <- paste("aws redshift modify-event-subscription",
                 ifelse(!is.null(subscription.name),paste("--subscription-name",subscription.name),""),
                 ifelse(!is.null(sns.topic.arn),paste("--sns-topic-arn",sns.topic.arn),""),
                 ifelse(!is.null(source.type),paste("--source-type",source.type),""),
                 ifelse(!is.null(source.ids),paste("--source-ids",source.ids),""),
                 ifelse(!is.null(event.categories),paste("--event-categories",event.categories),""),
                 ifelse(!is.null(severity),paste("--severity",severity),""),
                 ifelse(enabled,"--enabled",""),
                 ifelse(no.enabled,"--no-enabled",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.modify.snapshot.copy.retention.period <- function (cluster.identifier=NULL,retention.period=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift modify-snapshot-copy-retention-period",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(retention.period),paste("--retention-period",retention.period),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.purchase.reserved.node.offering <- function (reserved.node.offering.id=NULL,node.count=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift purchase-reserved-node-offering",
                 ifelse(!is.null(reserved.node.offering.id),paste("--reserved-node-offering-id",reserved.node.offering.id),""),
                 ifelse(!is.null(node.count),paste("--node-count",node.count),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.reboot.cluster <- function (cluster.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift reboot-cluster",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.reset.cluster.parameter.group <- function (parameter.group.name=NULL,reset.all.parameters=FALSE,no.reset.all.parameters=FALSE,parameters=NULL,cli.input.json=NULL) {
    if(reset.all.parameters && no.reset.all.parameters) stop("please set either reset.all.parameters or no.reset.all.parameters")
    cmd <- paste("aws redshift reset-cluster-parameter-group",
                 ifelse(!is.null(parameter.group.name),paste("--parameter-group-name",parameter.group.name),""),
                 ifelse(reset.all.parameters,"--reset-all-parameters",""),
                 ifelse(no.reset.all.parameters,"--no-reset-all-parameters",""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.restore.from.cluster.snapshot <- function (cluster.identifier=NULL,snapshot.identifier=NULL,snapshot.cluster.identifier=NULL,port=NULL,availability.zone=NULL,allow.version.upgrade=FALSE,no.allow.version.upgrade=FALSE,cluster.subnet.group.name=NULL,publicly.accessible=FALSE,no.publicly.accessible=FALSE,owner.account=NULL,hsm.client.certificate.identifier=NULL,hsm.configuration.identifier=NULL,elastic.ip=NULL,cluster.parameter.group.name=NULL,cluster.security.groups=NULL,vpc.security.group.ids=NULL,preferred.maintenance.window=NULL,automated.snapshot.retention.period=NULL,kms.key.id=NULL,node.type=NULL,cli.input.json=NULL) {
    if(allow.version.upgrade && no.allow.version.upgrade) stop("please set either allow.version.upgrade or no.allow.version.upgrade")
    if(publicly.accessible && no.publicly.accessible) stop("please set either publicly.accessible or no.publicly.accessible")
    cmd <- paste("aws redshift restore-from-cluster-snapshot",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(snapshot.identifier),paste("--snapshot-identifier",snapshot.identifier),""),
                 ifelse(!is.null(snapshot.cluster.identifier),paste("--snapshot-cluster-identifier",snapshot.cluster.identifier),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(allow.version.upgrade,"--allow-version-upgrade",""),
                 ifelse(no.allow.version.upgrade,"--no-allow-version-upgrade",""),
                 ifelse(!is.null(cluster.subnet.group.name),paste("--cluster-subnet-group-name",cluster.subnet.group.name),""),
                 ifelse(publicly.accessible,"--publicly-accessible",""),
                 ifelse(no.publicly.accessible,"--no-publicly-accessible",""),
                 ifelse(!is.null(owner.account),paste("--owner-account",owner.account),""),
                 ifelse(!is.null(hsm.client.certificate.identifier),paste("--hsm-client-certificate-identifier",hsm.client.certificate.identifier),""),
                 ifelse(!is.null(hsm.configuration.identifier),paste("--hsm-configuration-identifier",hsm.configuration.identifier),""),
                 ifelse(!is.null(elastic.ip),paste("--elastic-ip",elastic.ip),""),
                 ifelse(!is.null(cluster.parameter.group.name),paste("--cluster-parameter-group-name",cluster.parameter.group.name),""),
                 ifelse(!is.null(cluster.security.groups),paste("--cluster-security-groups",cluster.security.groups),""),
                 ifelse(!is.null(vpc.security.group.ids),paste("--vpc-security-group-ids",vpc.security.group.ids),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(automated.snapshot.retention.period),paste("--automated-snapshot-retention-period",automated.snapshot.retention.period),""),
                 ifelse(!is.null(kms.key.id),paste("--kms-key-id",kms.key.id),""),
                 ifelse(!is.null(node.type),paste("--node-type",node.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.revoke.cluster.security.group.ingress <- function (cluster.security.group.name=NULL,cidrip=NULL,ec2.security.group.name=NULL,ec2.security.group.owner.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift revoke-cluster-security-group-ingress",
                 ifelse(!is.null(cluster.security.group.name),paste("--cluster-security-group-name",cluster.security.group.name),""),
                 ifelse(!is.null(cidrip),paste("--cidrip",cidrip),""),
                 ifelse(!is.null(ec2.security.group.name),paste("--ec2-security-group-name",ec2.security.group.name),""),
                 ifelse(!is.null(ec2.security.group.owner.id),paste("--ec2-security-group-owner-id",ec2.security.group.owner.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.revoke.snapshot.access <- function (snapshot.identifier=NULL,snapshot.cluster.identifier=NULL,account.with.restore.access=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift revoke-snapshot-access",
                 ifelse(!is.null(snapshot.identifier),paste("--snapshot-identifier",snapshot.identifier),""),
                 ifelse(!is.null(snapshot.cluster.identifier),paste("--snapshot-cluster-identifier",snapshot.cluster.identifier),""),
                 ifelse(!is.null(account.with.restore.access),paste("--account-with-restore-access",account.with.restore.access),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
redshift.rotate.encryption.key <- function (cluster.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws redshift rotate-encryption-key",
                 ifelse(!is.null(cluster.identifier),paste("--cluster-identifier",cluster.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
