autoscaling.attach.instances <- function (instance.ids=NULL,auto.scaling.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling attach-instances",
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.attach.load.balancers <- function (auto.scaling.group.name=NULL,load.balancer.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling attach-load-balancers",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(load.balancer.names),paste("--load-balancer-names",load.balancer.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.complete.lifecycle.action <- function (lifecycle.hook.name=NULL,auto.scaling.group.name=NULL,lifecycle.action.token=NULL,lifecycle.action.result=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling complete-lifecycle-action",
                 ifelse(!is.null(lifecycle.hook.name),paste("--lifecycle-hook-name",lifecycle.hook.name),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(lifecycle.action.token),paste("--lifecycle-action-token",lifecycle.action.token),""),
                 ifelse(!is.null(lifecycle.action.result),paste("--lifecycle-action-result",lifecycle.action.result),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.create.auto.scaling.group <- function (auto.scaling.group.name=NULL,launch.configuration.name=NULL,instance.id=NULL,min.size=NULL,max.size=NULL,desired.capacity=NULL,default.cooldown=NULL,availability.zones=NULL,load.balancer.names=NULL,health.check.type=NULL,health.check.grace.period=NULL,placement.group=NULL,vpc.zone.identifier=NULL,termination.policies=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling create-auto-scaling-group",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(launch.configuration.name),paste("--launch-configuration-name",launch.configuration.name),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(min.size),paste("--min-size",min.size),""),
                 ifelse(!is.null(max.size),paste("--max-size",max.size),""),
                 ifelse(!is.null(desired.capacity),paste("--desired-capacity",desired.capacity),""),
                 ifelse(!is.null(default.cooldown),paste("--default-cooldown",default.cooldown),""),
                 ifelse(!is.null(availability.zones),paste("--availability-zones",availability.zones),""),
                 ifelse(!is.null(load.balancer.names),paste("--load-balancer-names",load.balancer.names),""),
                 ifelse(!is.null(health.check.type),paste("--health-check-type",health.check.type),""),
                 ifelse(!is.null(health.check.grace.period),paste("--health-check-grace-period",health.check.grace.period),""),
                 ifelse(!is.null(placement.group),paste("--placement-group",placement.group),""),
                 ifelse(!is.null(vpc.zone.identifier),paste("--vpc-zone-identifier",vpc.zone.identifier),""),
                 ifelse(!is.null(termination.policies),paste("--termination-policies",termination.policies),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.create.launch.configuration <- function (launch.configuration.name=NULL,image.id=NULL,key.name=NULL,security.groups=NULL,classic.link.vpc.id=NULL,classic.link.vpc.security.groups=NULL,user.data=NULL,instance.id=NULL,instance.type=NULL,kernel.id=NULL,ramdisk.id=NULL,block.device.mappings=NULL,instance.monitoring=NULL,spot.price=NULL,iam.instance.profile=NULL,ebs.optimized=FALSE,no.ebs.optimized=FALSE,associate.public.ip.address=FALSE,no.associate.public.ip.address=FALSE,placement.tenancy=NULL,cli.input.json=NULL) {
    if(ebs.optimized && no.ebs.optimized) stop("please set either ebs.optimized or no.ebs.optimized")
    if(associate.public.ip.address && no.associate.public.ip.address) stop("please set either associate.public.ip.address or no.associate.public.ip.address")
    cmd <- paste("aws autoscaling create-launch-configuration",
                 ifelse(!is.null(launch.configuration.name),paste("--launch-configuration-name",launch.configuration.name),""),
                 ifelse(!is.null(image.id),paste("--image-id",image.id),""),
                 ifelse(!is.null(key.name),paste("--key-name",key.name),""),
                 ifelse(!is.null(security.groups),paste("--security-groups",security.groups),""),
                 ifelse(!is.null(classic.link.vpc.id),paste("--classic-link-vpc-id",classic.link.vpc.id),""),
                 ifelse(!is.null(classic.link.vpc.security.groups),paste("--classic-link-vpc-security-groups",classic.link.vpc.security.groups),""),
                 ifelse(!is.null(user.data),paste("--user-data",user.data),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(instance.type),paste("--instance-type",instance.type),""),
                 ifelse(!is.null(kernel.id),paste("--kernel-id",kernel.id),""),
                 ifelse(!is.null(ramdisk.id),paste("--ramdisk-id",ramdisk.id),""),
                 ifelse(!is.null(block.device.mappings),paste("--block-device-mappings",block.device.mappings),""),
                 ifelse(!is.null(instance.monitoring),paste("--instance-monitoring",instance.monitoring),""),
                 ifelse(!is.null(spot.price),paste("--spot-price",spot.price),""),
                 ifelse(!is.null(iam.instance.profile),paste("--iam-instance-profile",iam.instance.profile),""),
                 ifelse(ebs.optimized,"--ebs-optimized",""),
                 ifelse(no.ebs.optimized,"--no-ebs-optimized",""),
                 ifelse(associate.public.ip.address,"--associate-public-ip-address",""),
                 ifelse(no.associate.public.ip.address,"--no-associate-public-ip-address",""),
                 ifelse(!is.null(placement.tenancy),paste("--placement-tenancy",placement.tenancy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.create.or.update.tags <- function (tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling create-or-update-tags",
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.delete.auto.scaling.group <- function (auto.scaling.group.name=NULL,force.delete=FALSE,no.force.delete=FALSE,cli.input.json=NULL) {
    if(force.delete && no.force.delete) stop("please set either force.delete or no.force.delete")
    cmd <- paste("aws autoscaling delete-auto-scaling-group",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(force.delete,"--force-delete",""),
                 ifelse(no.force.delete,"--no-force-delete",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.delete.launch.configuration <- function (launch.configuration.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling delete-launch-configuration",
                 ifelse(!is.null(launch.configuration.name),paste("--launch-configuration-name",launch.configuration.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.delete.lifecycle.hook <- function (lifecycle.hook.name=NULL,auto.scaling.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling delete-lifecycle-hook",
                 ifelse(!is.null(lifecycle.hook.name),paste("--lifecycle-hook-name",lifecycle.hook.name),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.delete.notification.configuration <- function (auto.scaling.group.name=NULL,topic.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling delete-notification-configuration",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.delete.policy <- function (auto.scaling.group.name=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling delete-policy",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.delete.scheduled.action <- function (auto.scaling.group.name=NULL,scheduled.action.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling delete-scheduled-action",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(scheduled.action.name),paste("--scheduled-action-name",scheduled.action.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.delete.tags <- function (tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling delete-tags",
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.account.limits <- function (cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-account-limits",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.adjustment.types <- function (cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-adjustment-types",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.auto.scaling.groups <- function (auto.scaling.group.names=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws autoscaling describe-auto-scaling-groups",
                 ifelse(!is.null(auto.scaling.group.names),paste("--auto-scaling-group-names",auto.scaling.group.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.auto.scaling.instances <- function (instance.ids=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws autoscaling describe-auto-scaling-instances",
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.auto.scaling.notification.types <- function (cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-auto-scaling-notification-types",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.launch.configurations <- function (launch.configuration.names=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws autoscaling describe-launch-configurations",
                 ifelse(!is.null(launch.configuration.names),paste("--launch-configuration-names",launch.configuration.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.lifecycle.hook.types <- function (cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-lifecycle-hook-types",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.lifecycle.hooks <- function (auto.scaling.group.name=NULL,lifecycle.hook.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-lifecycle-hooks",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(lifecycle.hook.names),paste("--lifecycle-hook-names",lifecycle.hook.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.load.balancers <- function (auto.scaling.group.name=NULL,next.token=NULL,max.records=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-load-balancers",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.records),paste("--max-records",max.records),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.metric.collection.types <- function (cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-metric-collection-types",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.notification.configurations <- function (auto.scaling.group.names=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws autoscaling describe-notification-configurations",
                 ifelse(!is.null(auto.scaling.group.names),paste("--auto-scaling-group-names",auto.scaling.group.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.policies <- function (auto.scaling.group.name=NULL,policy.names=NULL,policy.types=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws autoscaling describe-policies",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(policy.names),paste("--policy-names",policy.names),""),
                 ifelse(!is.null(policy.types),paste("--policy-types",policy.types),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.scaling.activities <- function (activity.ids=NULL,auto.scaling.group.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws autoscaling describe-scaling-activities",
                 ifelse(!is.null(activity.ids),paste("--activity-ids",activity.ids),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.scaling.process.types <- function (cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-scaling-process-types",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.scheduled.actions <- function (auto.scaling.group.name=NULL,scheduled.action.names=NULL,start.time=NULL,end.time=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws autoscaling describe-scheduled-actions",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(scheduled.action.names),paste("--scheduled-action-names",scheduled.action.names),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.tags <- function (filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws autoscaling describe-tags",
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
autoscaling.describe.termination.policy.types <- function (cli.input.json=NULL) {
    cmd <- paste("aws autoscaling describe-termination-policy-types",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.detach.instances <- function (instance.ids=NULL,auto.scaling.group.name=NULL,should.decrement.desired.capacity=FALSE,no.should.decrement.desired.capacity=FALSE,cli.input.json=NULL) {
    if(should.decrement.desired.capacity && no.should.decrement.desired.capacity) stop("please set either should.decrement.desired.capacity or no.should.decrement.desired.capacity")
    cmd <- paste("aws autoscaling detach-instances",
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(should.decrement.desired.capacity,"--should-decrement-desired-capacity",""),
                 ifelse(no.should.decrement.desired.capacity,"--no-should-decrement-desired-capacity",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.detach.load.balancers <- function (auto.scaling.group.name=NULL,load.balancer.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling detach-load-balancers",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(load.balancer.names),paste("--load-balancer-names",load.balancer.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.disable.metrics.collection <- function (auto.scaling.group.name=NULL,metrics=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling disable-metrics-collection",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(metrics),paste("--metrics",metrics),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.enable.metrics.collection <- function (auto.scaling.group.name=NULL,metrics=NULL,granularity=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling enable-metrics-collection",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(metrics),paste("--metrics",metrics),""),
                 ifelse(!is.null(granularity),paste("--granularity",granularity),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.enter.standby <- function (instance.ids=NULL,auto.scaling.group.name=NULL,should.decrement.desired.capacity=FALSE,no.should.decrement.desired.capacity=FALSE,cli.input.json=NULL) {
    if(should.decrement.desired.capacity && no.should.decrement.desired.capacity) stop("please set either should.decrement.desired.capacity or no.should.decrement.desired.capacity")
    cmd <- paste("aws autoscaling enter-standby",
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(should.decrement.desired.capacity,"--should-decrement-desired-capacity",""),
                 ifelse(no.should.decrement.desired.capacity,"--no-should-decrement-desired-capacity",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.execute.policy <- function (auto.scaling.group.name=NULL,policy.name=NULL,honor.cooldown=FALSE,no.honor.cooldown=FALSE,metric.value=NULL,breach.threshold=NULL,cli.input.json=NULL) {
    if(honor.cooldown && no.honor.cooldown) stop("please set either honor.cooldown or no.honor.cooldown")
    cmd <- paste("aws autoscaling execute-policy",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(honor.cooldown,"--honor-cooldown",""),
                 ifelse(no.honor.cooldown,"--no-honor-cooldown",""),
                 ifelse(!is.null(metric.value),paste("--metric-value",metric.value),""),
                 ifelse(!is.null(breach.threshold),paste("--breach-threshold",breach.threshold),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.exit.standby <- function (instance.ids=NULL,auto.scaling.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling exit-standby",
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.put.lifecycle.hook <- function (lifecycle.hook.name=NULL,auto.scaling.group.name=NULL,lifecycle.transition=NULL,role.arn=NULL,notification.target.arn=NULL,notification.metadata=NULL,heartbeat.timeout=NULL,default.result=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling put-lifecycle-hook",
                 ifelse(!is.null(lifecycle.hook.name),paste("--lifecycle-hook-name",lifecycle.hook.name),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(lifecycle.transition),paste("--lifecycle-transition",lifecycle.transition),""),
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(!is.null(notification.target.arn),paste("--notification-target-arn",notification.target.arn),""),
                 ifelse(!is.null(notification.metadata),paste("--notification-metadata",notification.metadata),""),
                 ifelse(!is.null(heartbeat.timeout),paste("--heartbeat-timeout",heartbeat.timeout),""),
                 ifelse(!is.null(default.result),paste("--default-result",default.result),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.put.notification.configuration <- function (auto.scaling.group.name=NULL,topic.arn=NULL,notification.types=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling put-notification-configuration",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(notification.types),paste("--notification-types",notification.types),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.put.scaling.policy <- function (auto.scaling.group.name=NULL,policy.name=NULL,policy.type=NULL,adjustment.type=NULL,min.adjustment.step=NULL,min.adjustment.magnitude=NULL,scaling.adjustment=NULL,cooldown=NULL,metric.aggregation.type=NULL,step.adjustments=NULL,estimated.instance.warmup=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling put-scaling-policy",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.type),paste("--policy-type",policy.type),""),
                 ifelse(!is.null(adjustment.type),paste("--adjustment-type",adjustment.type),""),
                 ifelse(!is.null(min.adjustment.step),paste("--min-adjustment-step",min.adjustment.step),""),
                 ifelse(!is.null(min.adjustment.magnitude),paste("--min-adjustment-magnitude",min.adjustment.magnitude),""),
                 ifelse(!is.null(scaling.adjustment),paste("--scaling-adjustment",scaling.adjustment),""),
                 ifelse(!is.null(cooldown),paste("--cooldown",cooldown),""),
                 ifelse(!is.null(metric.aggregation.type),paste("--metric-aggregation-type",metric.aggregation.type),""),
                 ifelse(!is.null(step.adjustments),paste("--step-adjustments",step.adjustments),""),
                 ifelse(!is.null(estimated.instance.warmup),paste("--estimated-instance-warmup",estimated.instance.warmup),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.put.scheduled.update.group.action <- function (auto.scaling.group.name=NULL,scheduled.action.name=NULL,time=NULL,start.time=NULL,end.time=NULL,recurrence=NULL,min.size=NULL,max.size=NULL,desired.capacity=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling put-scheduled-update-group-action",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(scheduled.action.name),paste("--scheduled-action-name",scheduled.action.name),""),
                 ifelse(!is.null(time),paste("--time",time),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(recurrence),paste("--recurrence",recurrence),""),
                 ifelse(!is.null(min.size),paste("--min-size",min.size),""),
                 ifelse(!is.null(max.size),paste("--max-size",max.size),""),
                 ifelse(!is.null(desired.capacity),paste("--desired-capacity",desired.capacity),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.record.lifecycle.action.heartbeat <- function (lifecycle.hook.name=NULL,auto.scaling.group.name=NULL,lifecycle.action.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling record-lifecycle-action-heartbeat",
                 ifelse(!is.null(lifecycle.hook.name),paste("--lifecycle-hook-name",lifecycle.hook.name),""),
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(lifecycle.action.token),paste("--lifecycle-action-token",lifecycle.action.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.resume.processes <- function (auto.scaling.group.name=NULL,scaling.processes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling resume-processes",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(scaling.processes),paste("--scaling-processes",scaling.processes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.set.desired.capacity <- function (auto.scaling.group.name=NULL,desired.capacity=NULL,honor.cooldown=FALSE,no.honor.cooldown=FALSE,cli.input.json=NULL) {
    if(honor.cooldown && no.honor.cooldown) stop("please set either honor.cooldown or no.honor.cooldown")
    cmd <- paste("aws autoscaling set-desired-capacity",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(desired.capacity),paste("--desired-capacity",desired.capacity),""),
                 ifelse(honor.cooldown,"--honor-cooldown",""),
                 ifelse(no.honor.cooldown,"--no-honor-cooldown",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.set.instance.health <- function (instance.id=NULL,health.status=NULL,should.respect.grace.period=FALSE,no.should.respect.grace.period=FALSE,cli.input.json=NULL) {
    if(should.respect.grace.period && no.should.respect.grace.period) stop("please set either should.respect.grace.period or no.should.respect.grace.period")
    cmd <- paste("aws autoscaling set-instance-health",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(health.status),paste("--health-status",health.status),""),
                 ifelse(should.respect.grace.period,"--should-respect-grace-period",""),
                 ifelse(no.should.respect.grace.period,"--no-should-respect-grace-period",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.suspend.processes <- function (auto.scaling.group.name=NULL,scaling.processes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling suspend-processes",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(scaling.processes),paste("--scaling-processes",scaling.processes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.terminate.instance.in.auto.scaling.group <- function (instance.id=NULL,should.decrement.desired.capacity=FALSE,no.should.decrement.desired.capacity=FALSE,cli.input.json=NULL) {
    if(should.decrement.desired.capacity && no.should.decrement.desired.capacity) stop("please set either should.decrement.desired.capacity or no.should.decrement.desired.capacity")
    cmd <- paste("aws autoscaling terminate-instance-in-auto-scaling-group",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(should.decrement.desired.capacity,"--should-decrement-desired-capacity",""),
                 ifelse(no.should.decrement.desired.capacity,"--no-should-decrement-desired-capacity",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
autoscaling.update.auto.scaling.group <- function (auto.scaling.group.name=NULL,launch.configuration.name=NULL,min.size=NULL,max.size=NULL,desired.capacity=NULL,default.cooldown=NULL,availability.zones=NULL,health.check.type=NULL,health.check.grace.period=NULL,placement.group=NULL,vpc.zone.identifier=NULL,termination.policies=NULL,cli.input.json=NULL) {
    cmd <- paste("aws autoscaling update-auto-scaling-group",
                 ifelse(!is.null(auto.scaling.group.name),paste("--auto-scaling-group-name",auto.scaling.group.name),""),
                 ifelse(!is.null(launch.configuration.name),paste("--launch-configuration-name",launch.configuration.name),""),
                 ifelse(!is.null(min.size),paste("--min-size",min.size),""),
                 ifelse(!is.null(max.size),paste("--max-size",max.size),""),
                 ifelse(!is.null(desired.capacity),paste("--desired-capacity",desired.capacity),""),
                 ifelse(!is.null(default.cooldown),paste("--default-cooldown",default.cooldown),""),
                 ifelse(!is.null(availability.zones),paste("--availability-zones",availability.zones),""),
                 ifelse(!is.null(health.check.type),paste("--health-check-type",health.check.type),""),
                 ifelse(!is.null(health.check.grace.period),paste("--health-check-grace-period",health.check.grace.period),""),
                 ifelse(!is.null(placement.group),paste("--placement-group",placement.group),""),
                 ifelse(!is.null(vpc.zone.identifier),paste("--vpc-zone-identifier",vpc.zone.identifier),""),
                 ifelse(!is.null(termination.policies),paste("--termination-policies",termination.policies),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
