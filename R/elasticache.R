elasticache.add.tags.to.resource <- function (resource.name=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache add-tags-to-resource",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.authorize.cache.security.group.ingress <- function (cache.security.group.name=NULL,ec2.security.group.name=NULL,ec2.security.group.owner.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache authorize-cache-security-group-ingress",
                 ifelse(!is.null(cache.security.group.name),paste("--cache-security-group-name",cache.security.group.name),""),
                 ifelse(!is.null(ec2.security.group.name),paste("--ec2-security-group-name",ec2.security.group.name),""),
                 ifelse(!is.null(ec2.security.group.owner.id),paste("--ec2-security-group-owner-id",ec2.security.group.owner.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.copy.snapshot <- function (source.snapshot.name=NULL,target.snapshot.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache copy-snapshot",
                 ifelse(!is.null(source.snapshot.name),paste("--source-snapshot-name",source.snapshot.name),""),
                 ifelse(!is.null(target.snapshot.name),paste("--target-snapshot-name",target.snapshot.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.create.cache.cluster <- function (cache.cluster.id=NULL,replication.group.id=NULL,az.mode=NULL,preferred.availability.zone=NULL,preferred.availability.zones=NULL,num.cache.nodes=NULL,cache.node.type=NULL,engine=NULL,engine.version=NULL,cache.parameter.group.name=NULL,cache.subnet.group.name=NULL,cache.security.group.names=NULL,security.group.ids=NULL,tags=NULL,snapshot.arns=NULL,snapshot.name=NULL,preferred.maintenance.window=NULL,port=NULL,notification.topic.arn=NULL,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,snapshot.retention.limit=NULL,snapshot.window=NULL,cli.input.json=NULL) {
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    cmd <- paste("aws elasticache create-cache-cluster",
                 ifelse(!is.null(cache.cluster.id),paste("--cache-cluster-id",cache.cluster.id),""),
                 ifelse(!is.null(replication.group.id),paste("--replication-group-id",replication.group.id),""),
                 ifelse(!is.null(az.mode),paste("--az-mode",az.mode),""),
                 ifelse(!is.null(preferred.availability.zone),paste("--preferred-availability-zone",preferred.availability.zone),""),
                 ifelse(!is.null(preferred.availability.zones),paste("--preferred-availability-zones",preferred.availability.zones),""),
                 ifelse(!is.null(num.cache.nodes),paste("--num-cache-nodes",num.cache.nodes),""),
                 ifelse(!is.null(cache.node.type),paste("--cache-node-type",cache.node.type),""),
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(cache.subnet.group.name),paste("--cache-subnet-group-name",cache.subnet.group.name),""),
                 ifelse(!is.null(cache.security.group.names),paste("--cache-security-group-names",cache.security.group.names),""),
                 ifelse(!is.null(security.group.ids),paste("--security-group-ids",security.group.ids),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(snapshot.arns),paste("--snapshot-arns",snapshot.arns),""),
                 ifelse(!is.null(snapshot.name),paste("--snapshot-name",snapshot.name),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(notification.topic.arn),paste("--notification-topic-arn",notification.topic.arn),""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(snapshot.retention.limit),paste("--snapshot-retention-limit",snapshot.retention.limit),""),
                 ifelse(!is.null(snapshot.window),paste("--snapshot-window",snapshot.window),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.create.cache.parameter.group <- function (cache.parameter.group.name=NULL,cache.parameter.group.family=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache create-cache-parameter-group",
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(cache.parameter.group.family),paste("--cache-parameter-group-family",cache.parameter.group.family),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.create.cache.security.group <- function (cache.security.group.name=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache create-cache-security-group",
                 ifelse(!is.null(cache.security.group.name),paste("--cache-security-group-name",cache.security.group.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.create.cache.subnet.group <- function (cache.subnet.group.name=NULL,cache.subnet.group.description=NULL,subnet.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache create-cache-subnet-group",
                 ifelse(!is.null(cache.subnet.group.name),paste("--cache-subnet-group-name",cache.subnet.group.name),""),
                 ifelse(!is.null(cache.subnet.group.description),paste("--cache-subnet-group-description",cache.subnet.group.description),""),
                 ifelse(!is.null(subnet.ids),paste("--subnet-ids",subnet.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.create.replication.group <- function (replication.group.id=NULL,replication.group.description=NULL,primary.cluster.id=NULL,automatic.failover.enabled=FALSE,no.automatic.failover.enabled=FALSE,num.cache.clusters=NULL,preferred.cache.cluster.a.zs=NULL,cache.node.type=NULL,engine=NULL,engine.version=NULL,cache.parameter.group.name=NULL,cache.subnet.group.name=NULL,cache.security.group.names=NULL,security.group.ids=NULL,tags=NULL,snapshot.arns=NULL,snapshot.name=NULL,preferred.maintenance.window=NULL,port=NULL,notification.topic.arn=NULL,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,snapshot.retention.limit=NULL,snapshot.window=NULL,cli.input.json=NULL) {
    if(automatic.failover.enabled && no.automatic.failover.enabled) stop("please set either automatic.failover.enabled or no.automatic.failover.enabled")
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    cmd <- paste("aws elasticache create-replication-group",
                 ifelse(!is.null(replication.group.id),paste("--replication-group-id",replication.group.id),""),
                 ifelse(!is.null(replication.group.description),paste("--replication-group-description",replication.group.description),""),
                 ifelse(!is.null(primary.cluster.id),paste("--primary-cluster-id",primary.cluster.id),""),
                 ifelse(automatic.failover.enabled,"--automatic-failover-enabled",""),
                 ifelse(no.automatic.failover.enabled,"--no-automatic-failover-enabled",""),
                 ifelse(!is.null(num.cache.clusters),paste("--num-cache-clusters",num.cache.clusters),""),
                 ifelse(!is.null(preferred.cache.cluster.a.zs),paste("--preferred-cache-cluster-a-zs",preferred.cache.cluster.a.zs),""),
                 ifelse(!is.null(cache.node.type),paste("--cache-node-type",cache.node.type),""),
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(cache.subnet.group.name),paste("--cache-subnet-group-name",cache.subnet.group.name),""),
                 ifelse(!is.null(cache.security.group.names),paste("--cache-security-group-names",cache.security.group.names),""),
                 ifelse(!is.null(security.group.ids),paste("--security-group-ids",security.group.ids),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(snapshot.arns),paste("--snapshot-arns",snapshot.arns),""),
                 ifelse(!is.null(snapshot.name),paste("--snapshot-name",snapshot.name),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(notification.topic.arn),paste("--notification-topic-arn",notification.topic.arn),""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(snapshot.retention.limit),paste("--snapshot-retention-limit",snapshot.retention.limit),""),
                 ifelse(!is.null(snapshot.window),paste("--snapshot-window",snapshot.window),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.create.snapshot <- function (cache.cluster.id=NULL,snapshot.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache create-snapshot",
                 ifelse(!is.null(cache.cluster.id),paste("--cache-cluster-id",cache.cluster.id),""),
                 ifelse(!is.null(snapshot.name),paste("--snapshot-name",snapshot.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.delete.cache.cluster <- function (cache.cluster.id=NULL,final.snapshot.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache delete-cache-cluster",
                 ifelse(!is.null(cache.cluster.id),paste("--cache-cluster-id",cache.cluster.id),""),
                 ifelse(!is.null(final.snapshot.identifier),paste("--final-snapshot-identifier",final.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.delete.cache.parameter.group <- function (cache.parameter.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache delete-cache-parameter-group",
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.delete.cache.security.group <- function (cache.security.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache delete-cache-security-group",
                 ifelse(!is.null(cache.security.group.name),paste("--cache-security-group-name",cache.security.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.delete.cache.subnet.group <- function (cache.subnet.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache delete-cache-subnet-group",
                 ifelse(!is.null(cache.subnet.group.name),paste("--cache-subnet-group-name",cache.subnet.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.delete.replication.group <- function (replication.group.id=NULL,retain.primary.cluster=FALSE,no.retain.primary.cluster=FALSE,final.snapshot.identifier=NULL,cli.input.json=NULL) {
    if(retain.primary.cluster && no.retain.primary.cluster) stop("please set either retain.primary.cluster or no.retain.primary.cluster")
    cmd <- paste("aws elasticache delete-replication-group",
                 ifelse(!is.null(replication.group.id),paste("--replication-group-id",replication.group.id),""),
                 ifelse(retain.primary.cluster,"--retain-primary-cluster",""),
                 ifelse(no.retain.primary.cluster,"--no-retain-primary-cluster",""),
                 ifelse(!is.null(final.snapshot.identifier),paste("--final-snapshot-identifier",final.snapshot.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.delete.snapshot <- function (snapshot.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache delete-snapshot",
                 ifelse(!is.null(snapshot.name),paste("--snapshot-name",snapshot.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.cache.clusters <- function (cache.cluster.id=NULL,show.cache.node.info=FALSE,no.show.cache.node.info=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(show.cache.node.info && no.show.cache.node.info) stop("please set either show.cache.node.info or no.show.cache.node.info")
    cmd <- paste("aws elasticache describe-cache-clusters",
                 ifelse(!is.null(cache.cluster.id),paste("--cache-cluster-id",cache.cluster.id),""),
                 ifelse(show.cache.node.info,"--show-cache-node-info",""),
                 ifelse(no.show.cache.node.info,"--no-show-cache-node-info",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.cache.engine.versions <- function (engine=NULL,engine.version=NULL,cache.parameter.group.family=NULL,default.only=FALSE,no.default.only=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(default.only && no.default.only) stop("please set either default.only or no.default.only")
    cmd <- paste("aws elasticache describe-cache-engine-versions",
                 ifelse(!is.null(engine),paste("--engine",engine),""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(!is.null(cache.parameter.group.family),paste("--cache-parameter-group-family",cache.parameter.group.family),""),
                 ifelse(default.only,"--default-only",""),
                 ifelse(no.default.only,"--no-default-only",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.cache.parameter.groups <- function (cache.parameter.group.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-cache-parameter-groups",
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.cache.parameters <- function (cache.parameter.group.name=NULL,source=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-cache-parameters",
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(source),paste("--source",source),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.cache.security.groups <- function (cache.security.group.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-cache-security-groups",
                 ifelse(!is.null(cache.security.group.name),paste("--cache-security-group-name",cache.security.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.cache.subnet.groups <- function (cache.subnet.group.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-cache-subnet-groups",
                 ifelse(!is.null(cache.subnet.group.name),paste("--cache-subnet-group-name",cache.subnet.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.engine.default.parameters <- function (cache.parameter.group.family=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-engine-default-parameters",
                 ifelse(!is.null(cache.parameter.group.family),paste("--cache-parameter-group-family",cache.parameter.group.family),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.events <- function (source.identifier=NULL,source.type=NULL,start.time=NULL,end.time=NULL,duration=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-events",
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
elasticache.describe.replication.groups <- function (replication.group.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-replication-groups",
                 ifelse(!is.null(replication.group.id),paste("--replication-group-id",replication.group.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.reserved.cache.nodes <- function (reserved.cache.node.id=NULL,reserved.cache.nodes.offering.id=NULL,cache.node.type=NULL,duration=NULL,product.description=NULL,offering.type=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-reserved-cache-nodes",
                 ifelse(!is.null(reserved.cache.node.id),paste("--reserved-cache-node-id",reserved.cache.node.id),""),
                 ifelse(!is.null(reserved.cache.nodes.offering.id),paste("--reserved-cache-nodes-offering-id",reserved.cache.nodes.offering.id),""),
                 ifelse(!is.null(cache.node.type),paste("--cache-node-type",cache.node.type),""),
                 ifelse(!is.null(duration),paste("--duration",duration),""),
                 ifelse(!is.null(product.description),paste("--product-description",product.description),""),
                 ifelse(!is.null(offering.type),paste("--offering-type",offering.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.reserved.cache.nodes.offerings <- function (reserved.cache.nodes.offering.id=NULL,cache.node.type=NULL,duration=NULL,product.description=NULL,offering.type=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-reserved-cache-nodes-offerings",
                 ifelse(!is.null(reserved.cache.nodes.offering.id),paste("--reserved-cache-nodes-offering-id",reserved.cache.nodes.offering.id),""),
                 ifelse(!is.null(cache.node.type),paste("--cache-node-type",cache.node.type),""),
                 ifelse(!is.null(duration),paste("--duration",duration),""),
                 ifelse(!is.null(product.description),paste("--product-description",product.description),""),
                 ifelse(!is.null(offering.type),paste("--offering-type",offering.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.describe.snapshots <- function (cache.cluster.id=NULL,snapshot.name=NULL,snapshot.source=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws elasticache describe-snapshots",
                 ifelse(!is.null(cache.cluster.id),paste("--cache-cluster-id",cache.cluster.id),""),
                 ifelse(!is.null(snapshot.name),paste("--snapshot-name",snapshot.name),""),
                 ifelse(!is.null(snapshot.source),paste("--snapshot-source",snapshot.source),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elasticache.list.tags.for.resource <- function (resource.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache list-tags-for-resource",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.modify.cache.cluster <- function (cache.cluster.id=NULL,num.cache.nodes=NULL,cache.node.ids.to.remove=NULL,az.mode=NULL,new.availability.zones=NULL,cache.security.group.names=NULL,security.group.ids=NULL,preferred.maintenance.window=NULL,notification.topic.arn=NULL,cache.parameter.group.name=NULL,notification.topic.status=NULL,apply.immediately=FALSE,no.apply.immediately=FALSE,engine.version=NULL,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,snapshot.retention.limit=NULL,snapshot.window=NULL,cli.input.json=NULL) {
    if(apply.immediately && no.apply.immediately) stop("please set either apply.immediately or no.apply.immediately")
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    cmd <- paste("aws elasticache modify-cache-cluster",
                 ifelse(!is.null(cache.cluster.id),paste("--cache-cluster-id",cache.cluster.id),""),
                 ifelse(!is.null(num.cache.nodes),paste("--num-cache-nodes",num.cache.nodes),""),
                 ifelse(!is.null(cache.node.ids.to.remove),paste("--cache-node-ids-to-remove",cache.node.ids.to.remove),""),
                 ifelse(!is.null(az.mode),paste("--az-mode",az.mode),""),
                 ifelse(!is.null(new.availability.zones),paste("--new-availability-zones",new.availability.zones),""),
                 ifelse(!is.null(cache.security.group.names),paste("--cache-security-group-names",cache.security.group.names),""),
                 ifelse(!is.null(security.group.ids),paste("--security-group-ids",security.group.ids),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(notification.topic.arn),paste("--notification-topic-arn",notification.topic.arn),""),
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(notification.topic.status),paste("--notification-topic-status",notification.topic.status),""),
                 ifelse(apply.immediately,"--apply-immediately",""),
                 ifelse(no.apply.immediately,"--no-apply-immediately",""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(snapshot.retention.limit),paste("--snapshot-retention-limit",snapshot.retention.limit),""),
                 ifelse(!is.null(snapshot.window),paste("--snapshot-window",snapshot.window),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.modify.cache.parameter.group <- function (cache.parameter.group.name=NULL,parameter.name.values=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache modify-cache-parameter-group",
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(parameter.name.values),paste("--parameter-name-values",parameter.name.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.modify.cache.subnet.group <- function (cache.subnet.group.name=NULL,cache.subnet.group.description=NULL,subnet.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache modify-cache-subnet-group",
                 ifelse(!is.null(cache.subnet.group.name),paste("--cache-subnet-group-name",cache.subnet.group.name),""),
                 ifelse(!is.null(cache.subnet.group.description),paste("--cache-subnet-group-description",cache.subnet.group.description),""),
                 ifelse(!is.null(subnet.ids),paste("--subnet-ids",subnet.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.modify.replication.group <- function (replication.group.id=NULL,replication.group.description=NULL,primary.cluster.id=NULL,snapshotting.cluster.id=NULL,automatic.failover.enabled=FALSE,no.automatic.failover.enabled=FALSE,cache.security.group.names=NULL,security.group.ids=NULL,preferred.maintenance.window=NULL,notification.topic.arn=NULL,cache.parameter.group.name=NULL,notification.topic.status=NULL,apply.immediately=FALSE,no.apply.immediately=FALSE,engine.version=NULL,auto.minor.version.upgrade=FALSE,no.auto.minor.version.upgrade=FALSE,snapshot.retention.limit=NULL,snapshot.window=NULL,cli.input.json=NULL) {
    if(automatic.failover.enabled && no.automatic.failover.enabled) stop("please set either automatic.failover.enabled or no.automatic.failover.enabled")
    if(apply.immediately && no.apply.immediately) stop("please set either apply.immediately or no.apply.immediately")
    if(auto.minor.version.upgrade && no.auto.minor.version.upgrade) stop("please set either auto.minor.version.upgrade or no.auto.minor.version.upgrade")
    cmd <- paste("aws elasticache modify-replication-group",
                 ifelse(!is.null(replication.group.id),paste("--replication-group-id",replication.group.id),""),
                 ifelse(!is.null(replication.group.description),paste("--replication-group-description",replication.group.description),""),
                 ifelse(!is.null(primary.cluster.id),paste("--primary-cluster-id",primary.cluster.id),""),
                 ifelse(!is.null(snapshotting.cluster.id),paste("--snapshotting-cluster-id",snapshotting.cluster.id),""),
                 ifelse(automatic.failover.enabled,"--automatic-failover-enabled",""),
                 ifelse(no.automatic.failover.enabled,"--no-automatic-failover-enabled",""),
                 ifelse(!is.null(cache.security.group.names),paste("--cache-security-group-names",cache.security.group.names),""),
                 ifelse(!is.null(security.group.ids),paste("--security-group-ids",security.group.ids),""),
                 ifelse(!is.null(preferred.maintenance.window),paste("--preferred-maintenance-window",preferred.maintenance.window),""),
                 ifelse(!is.null(notification.topic.arn),paste("--notification-topic-arn",notification.topic.arn),""),
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(!is.null(notification.topic.status),paste("--notification-topic-status",notification.topic.status),""),
                 ifelse(apply.immediately,"--apply-immediately",""),
                 ifelse(no.apply.immediately,"--no-apply-immediately",""),
                 ifelse(!is.null(engine.version),paste("--engine-version",engine.version),""),
                 ifelse(auto.minor.version.upgrade,"--auto-minor-version-upgrade",""),
                 ifelse(no.auto.minor.version.upgrade,"--no-auto-minor-version-upgrade",""),
                 ifelse(!is.null(snapshot.retention.limit),paste("--snapshot-retention-limit",snapshot.retention.limit),""),
                 ifelse(!is.null(snapshot.window),paste("--snapshot-window",snapshot.window),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.purchase.reserved.cache.nodes.offering <- function (reserved.cache.nodes.offering.id=NULL,reserved.cache.node.id=NULL,cache.node.count=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache purchase-reserved-cache-nodes-offering",
                 ifelse(!is.null(reserved.cache.nodes.offering.id),paste("--reserved-cache-nodes-offering-id",reserved.cache.nodes.offering.id),""),
                 ifelse(!is.null(reserved.cache.node.id),paste("--reserved-cache-node-id",reserved.cache.node.id),""),
                 ifelse(!is.null(cache.node.count),paste("--cache-node-count",cache.node.count),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.reboot.cache.cluster <- function (cache.cluster.id=NULL,cache.node.ids.to.reboot=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache reboot-cache-cluster",
                 ifelse(!is.null(cache.cluster.id),paste("--cache-cluster-id",cache.cluster.id),""),
                 ifelse(!is.null(cache.node.ids.to.reboot),paste("--cache-node-ids-to-reboot",cache.node.ids.to.reboot),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.remove.tags.from.resource <- function (resource.name=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache remove-tags-from-resource",
                 ifelse(!is.null(resource.name),paste("--resource-name",resource.name),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.reset.cache.parameter.group <- function (cache.parameter.group.name=NULL,reset.all.parameters=FALSE,no.reset.all.parameters=FALSE,parameter.name.values=NULL,cli.input.json=NULL) {
    if(reset.all.parameters && no.reset.all.parameters) stop("please set either reset.all.parameters or no.reset.all.parameters")
    cmd <- paste("aws elasticache reset-cache-parameter-group",
                 ifelse(!is.null(cache.parameter.group.name),paste("--cache-parameter-group-name",cache.parameter.group.name),""),
                 ifelse(reset.all.parameters,"--reset-all-parameters",""),
                 ifelse(no.reset.all.parameters,"--no-reset-all-parameters",""),
                 ifelse(!is.null(parameter.name.values),paste("--parameter-name-values",parameter.name.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elasticache.revoke.cache.security.group.ingress <- function (cache.security.group.name=NULL,ec2.security.group.name=NULL,ec2.security.group.owner.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elasticache revoke-cache-security-group-ingress",
                 ifelse(!is.null(cache.security.group.name),paste("--cache-security-group-name",cache.security.group.name),""),
                 ifelse(!is.null(ec2.security.group.name),paste("--ec2-security-group-name",ec2.security.group.name),""),
                 ifelse(!is.null(ec2.security.group.owner.id),paste("--ec2-security-group-owner-id",ec2.security.group.owner.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
