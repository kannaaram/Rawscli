opsworks.assign.instance <- function (instance.id=NULL,layer.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks assign-instance",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(layer.ids),paste("--layer-ids",layer.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.assign.volume <- function (volume.id=NULL,instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks assign-volume",
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.associate.elastic.ip <- function (elastic.ip=NULL,instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks associate-elastic-ip",
                 ifelse(!is.null(elastic.ip),paste("--elastic-ip",elastic.ip),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.attach.elastic.load.balancer <- function (elastic.load.balancer.name=NULL,layer.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks attach-elastic-load-balancer",
                 ifelse(!is.null(elastic.load.balancer.name),paste("--elastic-load-balancer-name",elastic.load.balancer.name),""),
                 ifelse(!is.null(layer.id),paste("--layer-id",layer.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.clone.stack <- function (source.stack.id=NULL,name=NULL,vpc.id=NULL,attributes=NULL,service.role.arn=NULL,default.instance.profile.arn=NULL,default.os=NULL,hostname.theme=NULL,default.availability.zone=NULL,default.subnet.id=NULL,custom.json=NULL,configuration.manager=NULL,chef.configuration=NULL,use.custom.cookbooks=FALSE,no.use.custom.cookbooks=FALSE,use.opsworks.security.groups=FALSE,no.use.opsworks.security.groups=FALSE,custom.cookbooks.source=NULL,default.ssh.key.name=NULL,clone.permissions=FALSE,no.clone.permissions=FALSE,clone.app.ids=NULL,default.root.device.type=NULL,agent.version=NULL,stack.region=NULL,cli.input.json=NULL) {
    if(use.custom.cookbooks && no.use.custom.cookbooks) stop("please set either use.custom.cookbooks or no.use.custom.cookbooks")
    if(use.opsworks.security.groups && no.use.opsworks.security.groups) stop("please set either use.opsworks.security.groups or no.use.opsworks.security.groups")
    if(clone.permissions && no.clone.permissions) stop("please set either clone.permissions or no.clone.permissions")
    cmd <- paste("aws opsworks clone-stack",
                 ifelse(!is.null(source.stack.id),paste("--source-stack-id",source.stack.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(service.role.arn),paste("--service-role-arn",service.role.arn),""),
                 ifelse(!is.null(default.instance.profile.arn),paste("--default-instance-profile-arn",default.instance.profile.arn),""),
                 ifelse(!is.null(default.os),paste("--default-os",default.os),""),
                 ifelse(!is.null(hostname.theme),paste("--hostname-theme",hostname.theme),""),
                 ifelse(!is.null(default.availability.zone),paste("--default-availability-zone",default.availability.zone),""),
                 ifelse(!is.null(default.subnet.id),paste("--default-subnet-id",default.subnet.id),""),
                 ifelse(!is.null(custom.json),paste("--custom-json",custom.json),""),
                 ifelse(!is.null(configuration.manager),paste("--configuration-manager",configuration.manager),""),
                 ifelse(!is.null(chef.configuration),paste("--chef-configuration",chef.configuration),""),
                 ifelse(use.custom.cookbooks,"--use-custom-cookbooks",""),
                 ifelse(no.use.custom.cookbooks,"--no-use-custom-cookbooks",""),
                 ifelse(use.opsworks.security.groups,"--use-opsworks-security-groups",""),
                 ifelse(no.use.opsworks.security.groups,"--no-use-opsworks-security-groups",""),
                 ifelse(!is.null(custom.cookbooks.source),paste("--custom-cookbooks-source",custom.cookbooks.source),""),
                 ifelse(!is.null(default.ssh.key.name),paste("--default-ssh-key-name",default.ssh.key.name),""),
                 ifelse(clone.permissions,"--clone-permissions",""),
                 ifelse(no.clone.permissions,"--no-clone-permissions",""),
                 ifelse(!is.null(clone.app.ids),paste("--clone-app-ids",clone.app.ids),""),
                 ifelse(!is.null(default.root.device.type),paste("--default-root-device-type",default.root.device.type),""),
                 ifelse(!is.null(agent.version),paste("--agent-version",agent.version),""),
                 ifelse(!is.null(stack.region),paste("--stack-region",stack.region),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.create.app <- function (stack.id=NULL,shortname=NULL,name=NULL,description=NULL,data.sources=NULL,type=NULL,app.source=NULL,domains=NULL,enable.ssl=FALSE,no.enable.ssl=FALSE,ssl.configuration=NULL,attributes=NULL,environment=NULL,cli.input.json=NULL) {
    if(enable.ssl && no.enable.ssl) stop("please set either enable.ssl or no.enable.ssl")
    cmd <- paste("aws opsworks create-app",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(shortname),paste("--shortname",shortname),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(data.sources),paste("--data-sources",data.sources),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(app.source),paste("--app-source",app.source),""),
                 ifelse(!is.null(domains),paste("--domains",domains),""),
                 ifelse(enable.ssl,"--enable-ssl",""),
                 ifelse(no.enable.ssl,"--no-enable-ssl",""),
                 ifelse(!is.null(ssl.configuration),paste("--ssl-configuration",ssl.configuration),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(environment),paste("--environment",environment),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.create.deployment <- function (stack.id=NULL,app.id=NULL,instance.ids=NULL,command=NULL,comment=NULL,custom.json=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks create-deployment",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(app.id),paste("--app-id",app.id),""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(command),paste("--command",command),""),
                 ifelse(!is.null(comment),paste("--comment",comment),""),
                 ifelse(!is.null(custom.json),paste("--custom-json",custom.json),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.create.instance <- function (stack.id=NULL,layer.ids=NULL,instance.type=NULL,auto.scaling.type=NULL,hostname=NULL,os=NULL,ami.id=NULL,ssh.key.name=NULL,availability.zone=NULL,virtualization.type=NULL,subnet.id=NULL,architecture=NULL,root.device.type=NULL,block.device.mappings=NULL,install.updates.on.boot=FALSE,no.install.updates.on.boot=FALSE,ebs.optimized=FALSE,no.ebs.optimized=FALSE,agent.version=NULL,cli.input.json=NULL) {
    if(install.updates.on.boot && no.install.updates.on.boot) stop("please set either install.updates.on.boot or no.install.updates.on.boot")
    if(ebs.optimized && no.ebs.optimized) stop("please set either ebs.optimized or no.ebs.optimized")
    cmd <- paste("aws opsworks create-instance",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(layer.ids),paste("--layer-ids",layer.ids),""),
                 ifelse(!is.null(instance.type),paste("--instance-type",instance.type),""),
                 ifelse(!is.null(auto.scaling.type),paste("--auto-scaling-type",auto.scaling.type),""),
                 ifelse(!is.null(hostname),paste("--hostname",hostname),""),
                 ifelse(!is.null(os),paste("--os",os),""),
                 ifelse(!is.null(ami.id),paste("--ami-id",ami.id),""),
                 ifelse(!is.null(ssh.key.name),paste("--ssh-key-name",ssh.key.name),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(virtualization.type),paste("--virtualization-type",virtualization.type),""),
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(!is.null(architecture),paste("--architecture",architecture),""),
                 ifelse(!is.null(root.device.type),paste("--root-device-type",root.device.type),""),
                 ifelse(!is.null(block.device.mappings),paste("--block-device-mappings",block.device.mappings),""),
                 ifelse(install.updates.on.boot,"--install-updates-on-boot",""),
                 ifelse(no.install.updates.on.boot,"--no-install-updates-on-boot",""),
                 ifelse(ebs.optimized,"--ebs-optimized",""),
                 ifelse(no.ebs.optimized,"--no-ebs-optimized",""),
                 ifelse(!is.null(agent.version),paste("--agent-version",agent.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.create.layer <- function (stack.id=NULL,type=NULL,name=NULL,shortname=NULL,attributes=NULL,custom.instance.profile.arn=NULL,custom.json=NULL,custom.security.group.ids=NULL,packages=NULL,volume.configurations=NULL,enable.auto.healing=FALSE,no.enable.auto.healing=FALSE,auto.assign.elastic.ips=FALSE,no.auto.assign.elastic.ips=FALSE,auto.assign.public.ips=FALSE,no.auto.assign.public.ips=FALSE,custom.recipes=NULL,install.updates.on.boot=FALSE,no.install.updates.on.boot=FALSE,use.ebs.optimized.instances=FALSE,no.use.ebs.optimized.instances=FALSE,lifecycle.event.configuration=NULL,cli.input.json=NULL) {
    if(enable.auto.healing && no.enable.auto.healing) stop("please set either enable.auto.healing or no.enable.auto.healing")
    if(auto.assign.elastic.ips && no.auto.assign.elastic.ips) stop("please set either auto.assign.elastic.ips or no.auto.assign.elastic.ips")
    if(auto.assign.public.ips && no.auto.assign.public.ips) stop("please set either auto.assign.public.ips or no.auto.assign.public.ips")
    if(install.updates.on.boot && no.install.updates.on.boot) stop("please set either install.updates.on.boot or no.install.updates.on.boot")
    if(use.ebs.optimized.instances && no.use.ebs.optimized.instances) stop("please set either use.ebs.optimized.instances or no.use.ebs.optimized.instances")
    cmd <- paste("aws opsworks create-layer",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(shortname),paste("--shortname",shortname),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(custom.instance.profile.arn),paste("--custom-instance-profile-arn",custom.instance.profile.arn),""),
                 ifelse(!is.null(custom.json),paste("--custom-json",custom.json),""),
                 ifelse(!is.null(custom.security.group.ids),paste("--custom-security-group-ids",custom.security.group.ids),""),
                 ifelse(!is.null(packages),paste("--packages",packages),""),
                 ifelse(!is.null(volume.configurations),paste("--volume-configurations",volume.configurations),""),
                 ifelse(enable.auto.healing,"--enable-auto-healing",""),
                 ifelse(no.enable.auto.healing,"--no-enable-auto-healing",""),
                 ifelse(auto.assign.elastic.ips,"--auto-assign-elastic-ips",""),
                 ifelse(no.auto.assign.elastic.ips,"--no-auto-assign-elastic-ips",""),
                 ifelse(auto.assign.public.ips,"--auto-assign-public-ips",""),
                 ifelse(no.auto.assign.public.ips,"--no-auto-assign-public-ips",""),
                 ifelse(!is.null(custom.recipes),paste("--custom-recipes",custom.recipes),""),
                 ifelse(install.updates.on.boot,"--install-updates-on-boot",""),
                 ifelse(no.install.updates.on.boot,"--no-install-updates-on-boot",""),
                 ifelse(use.ebs.optimized.instances,"--use-ebs-optimized-instances",""),
                 ifelse(no.use.ebs.optimized.instances,"--no-use-ebs-optimized-instances",""),
                 ifelse(!is.null(lifecycle.event.configuration),paste("--lifecycle-event-configuration",lifecycle.event.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.create.stack <- function (name=NULL,vpc.id=NULL,attributes=NULL,service.role.arn=NULL,default.instance.profile.arn=NULL,default.os=NULL,hostname.theme=NULL,default.availability.zone=NULL,default.subnet.id=NULL,custom.json=NULL,configuration.manager=NULL,chef.configuration=NULL,use.custom.cookbooks=FALSE,no.use.custom.cookbooks=FALSE,use.opsworks.security.groups=FALSE,no.use.opsworks.security.groups=FALSE,custom.cookbooks.source=NULL,default.ssh.key.name=NULL,default.root.device.type=NULL,agent.version=NULL,stack.region=NULL,cli.input.json=NULL) {
    if(use.custom.cookbooks && no.use.custom.cookbooks) stop("please set either use.custom.cookbooks or no.use.custom.cookbooks")
    if(use.opsworks.security.groups && no.use.opsworks.security.groups) stop("please set either use.opsworks.security.groups or no.use.opsworks.security.groups")
    cmd <- paste("aws opsworks create-stack",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(service.role.arn),paste("--service-role-arn",service.role.arn),""),
                 ifelse(!is.null(default.instance.profile.arn),paste("--default-instance-profile-arn",default.instance.profile.arn),""),
                 ifelse(!is.null(default.os),paste("--default-os",default.os),""),
                 ifelse(!is.null(hostname.theme),paste("--hostname-theme",hostname.theme),""),
                 ifelse(!is.null(default.availability.zone),paste("--default-availability-zone",default.availability.zone),""),
                 ifelse(!is.null(default.subnet.id),paste("--default-subnet-id",default.subnet.id),""),
                 ifelse(!is.null(custom.json),paste("--custom-json",custom.json),""),
                 ifelse(!is.null(configuration.manager),paste("--configuration-manager",configuration.manager),""),
                 ifelse(!is.null(chef.configuration),paste("--chef-configuration",chef.configuration),""),
                 ifelse(use.custom.cookbooks,"--use-custom-cookbooks",""),
                 ifelse(no.use.custom.cookbooks,"--no-use-custom-cookbooks",""),
                 ifelse(use.opsworks.security.groups,"--use-opsworks-security-groups",""),
                 ifelse(no.use.opsworks.security.groups,"--no-use-opsworks-security-groups",""),
                 ifelse(!is.null(custom.cookbooks.source),paste("--custom-cookbooks-source",custom.cookbooks.source),""),
                 ifelse(!is.null(default.ssh.key.name),paste("--default-ssh-key-name",default.ssh.key.name),""),
                 ifelse(!is.null(default.root.device.type),paste("--default-root-device-type",default.root.device.type),""),
                 ifelse(!is.null(agent.version),paste("--agent-version",agent.version),""),
                 ifelse(!is.null(stack.region),paste("--stack-region",stack.region),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.create.user.profile <- function (iam.user.arn=NULL,ssh.username=NULL,ssh.public.key=NULL,allow.self.management=FALSE,no.allow.self.management=FALSE,cli.input.json=NULL) {
    if(allow.self.management && no.allow.self.management) stop("please set either allow.self.management or no.allow.self.management")
    cmd <- paste("aws opsworks create-user-profile",
                 ifelse(!is.null(iam.user.arn),paste("--iam-user-arn",iam.user.arn),""),
                 ifelse(!is.null(ssh.username),paste("--ssh-username",ssh.username),""),
                 ifelse(!is.null(ssh.public.key),paste("--ssh-public-key",ssh.public.key),""),
                 ifelse(allow.self.management,"--allow-self-management",""),
                 ifelse(no.allow.self.management,"--no-allow-self-management",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.delete.app <- function (app.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks delete-app",
                 ifelse(!is.null(app.id),paste("--app-id",app.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.delete.instance <- function (instance.id=NULL,delete.elastic.ip=FALSE,no.delete.elastic.ip=FALSE,delete.volumes=FALSE,no.delete.volumes=FALSE,cli.input.json=NULL) {
    if(delete.elastic.ip && no.delete.elastic.ip) stop("please set either delete.elastic.ip or no.delete.elastic.ip")
    if(delete.volumes && no.delete.volumes) stop("please set either delete.volumes or no.delete.volumes")
    cmd <- paste("aws opsworks delete-instance",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(delete.elastic.ip,"--delete-elastic-ip",""),
                 ifelse(no.delete.elastic.ip,"--no-delete-elastic-ip",""),
                 ifelse(delete.volumes,"--delete-volumes",""),
                 ifelse(no.delete.volumes,"--no-delete-volumes",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.delete.layer <- function (layer.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks delete-layer",
                 ifelse(!is.null(layer.id),paste("--layer-id",layer.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.delete.stack <- function (stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks delete-stack",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.delete.user.profile <- function (iam.user.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks delete-user-profile",
                 ifelse(!is.null(iam.user.arn),paste("--iam-user-arn",iam.user.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.deregister.ecs.cluster <- function (ecs.cluster.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks deregister-ecs-cluster",
                 ifelse(!is.null(ecs.cluster.arn),paste("--ecs-cluster-arn",ecs.cluster.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.deregister.elastic.ip <- function (elastic.ip=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks deregister-elastic-ip",
                 ifelse(!is.null(elastic.ip),paste("--elastic-ip",elastic.ip),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.deregister.instance <- function (instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks deregister-instance",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.deregister.rds.db.instance <- function (rds.db.instance.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks deregister-rds-db-instance",
                 ifelse(!is.null(rds.db.instance.arn),paste("--rds-db-instance-arn",rds.db.instance.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.deregister.volume <- function (volume.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks deregister-volume",
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.agent.versions <- function (stack.id=NULL,configuration.manager=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-agent-versions",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(configuration.manager),paste("--configuration-manager",configuration.manager),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.apps <- function (stack.id=NULL,app.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-apps",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(app.ids),paste("--app-ids",app.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.commands <- function (deployment.id=NULL,instance.id=NULL,command.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-commands",
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(command.ids),paste("--command-ids",command.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.deployments <- function (stack.id=NULL,app.id=NULL,deployment.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-deployments",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(app.id),paste("--app-id",app.id),""),
                 ifelse(!is.null(deployment.ids),paste("--deployment-ids",deployment.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.ecs.clusters <- function (ecs.cluster.arns=NULL,stack.id=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-ecs-clusters",
                 ifelse(!is.null(ecs.cluster.arns),paste("--ecs-cluster-arns",ecs.cluster.arns),""),
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.elastic.ips <- function (instance.id=NULL,stack.id=NULL,ips=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-elastic-ips",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(ips),paste("--ips",ips),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.elastic.load.balancers <- function (stack.id=NULL,layer.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-elastic-load-balancers",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(layer.ids),paste("--layer-ids",layer.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.instances <- function (stack.id=NULL,layer.id=NULL,instance.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-instances",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(layer.id),paste("--layer-id",layer.id),""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.layers <- function (stack.id=NULL,layer.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-layers",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(layer.ids),paste("--layer-ids",layer.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.load.based.auto.scaling <- function (layer.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-load-based-auto-scaling",
                 ifelse(!is.null(layer.ids),paste("--layer-ids",layer.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.my.user.profile <- function (cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-my-user-profile",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.permissions <- function (iam.user.arn=NULL,stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-permissions",
                 ifelse(!is.null(iam.user.arn),paste("--iam-user-arn",iam.user.arn),""),
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.raid.arrays <- function (instance.id=NULL,stack.id=NULL,raid.array.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-raid-arrays",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(raid.array.ids),paste("--raid-array-ids",raid.array.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.rds.db.instances <- function (stack.id=NULL,rds.db.instance.arns=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-rds-db-instances",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(rds.db.instance.arns),paste("--rds-db-instance-arns",rds.db.instance.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.service.errors <- function (stack.id=NULL,instance.id=NULL,service.error.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-service-errors",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(service.error.ids),paste("--service-error-ids",service.error.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.stack.provisioning.parameters <- function (stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-stack-provisioning-parameters",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.stack.summary <- function (stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-stack-summary",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.stacks <- function (stack.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-stacks",
                 ifelse(!is.null(stack.ids),paste("--stack-ids",stack.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.time.based.auto.scaling <- function (instance.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-time-based-auto-scaling",
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.user.profiles <- function (iam.user.arns=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-user-profiles",
                 ifelse(!is.null(iam.user.arns),paste("--iam-user-arns",iam.user.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.describe.volumes <- function (instance.id=NULL,stack.id=NULL,raid.array.id=NULL,volume.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks describe-volumes",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(raid.array.id),paste("--raid-array-id",raid.array.id),""),
                 ifelse(!is.null(volume.ids),paste("--volume-ids",volume.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.detach.elastic.load.balancer <- function (elastic.load.balancer.name=NULL,layer.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks detach-elastic-load-balancer",
                 ifelse(!is.null(elastic.load.balancer.name),paste("--elastic-load-balancer-name",elastic.load.balancer.name),""),
                 ifelse(!is.null(layer.id),paste("--layer-id",layer.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.disassociate.elastic.ip <- function (elastic.ip=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks disassociate-elastic-ip",
                 ifelse(!is.null(elastic.ip),paste("--elastic-ip",elastic.ip),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.get.hostname.suggestion <- function (layer.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks get-hostname-suggestion",
                 ifelse(!is.null(layer.id),paste("--layer-id",layer.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.grant.access <- function (instance.id=NULL,valid.for.in.minutes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks grant-access",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(valid.for.in.minutes),paste("--valid-for-in-minutes",valid.for.in.minutes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.reboot.instance <- function (instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks reboot-instance",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.register <- function (stack.id=NULL,infrastructure.class=NULL,override.hostname=NULL,override.private.ip=NULL,override.public.ip=NULL,override.ssh=NULL,ssh.username=NULL,ssh.private.key=NULL) {
    cmd <- paste("aws opsworks register",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(infrastructure.class),paste("--infrastructure-class",infrastructure.class),""),
                 ifelse(!is.null(override.hostname),paste("--override-hostname",override.hostname),""),
                 ifelse(!is.null(override.private.ip),paste("--override-private-ip",override.private.ip),""),
                 ifelse(!is.null(override.public.ip),paste("--override-public-ip",override.public.ip),""),
                 ifelse(!is.null(override.ssh),paste("--override-ssh",override.ssh),""),
                 ifelse(!is.null(ssh.username),paste("--ssh-username",ssh.username),""),
                 ifelse(!is.null(ssh.private.key),paste("--ssh-private-key",ssh.private.key),""))
    system(cmd,intern=TRUE) 
}
opsworks.register.ecs.cluster <- function (ecs.cluster.arn=NULL,stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks register-ecs-cluster",
                 ifelse(!is.null(ecs.cluster.arn),paste("--ecs-cluster-arn",ecs.cluster.arn),""),
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.register.elastic.ip <- function (elastic.ip=NULL,stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks register-elastic-ip",
                 ifelse(!is.null(elastic.ip),paste("--elastic-ip",elastic.ip),""),
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.register.instance <- function (stack.id=NULL,hostname=NULL,public.ip=NULL,private.ip=NULL,rsa.public.key=NULL,rsa.public.key.fingerprint=NULL,instance.identity=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks register-instance",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(hostname),paste("--hostname",hostname),""),
                 ifelse(!is.null(public.ip),paste("--public-ip",public.ip),""),
                 ifelse(!is.null(private.ip),paste("--private-ip",private.ip),""),
                 ifelse(!is.null(rsa.public.key),paste("--rsa-public-key",rsa.public.key),""),
                 ifelse(!is.null(rsa.public.key.fingerprint),paste("--rsa-public-key-fingerprint",rsa.public.key.fingerprint),""),
                 ifelse(!is.null(instance.identity),paste("--instance-identity",instance.identity),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.register.rds.db.instance <- function (stack.id=NULL,rds.db.instance.arn=NULL,db.user=NULL,db.password=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks register-rds-db-instance",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(rds.db.instance.arn),paste("--rds-db-instance-arn",rds.db.instance.arn),""),
                 ifelse(!is.null(db.user),paste("--db-user",db.user),""),
                 ifelse(!is.null(db.password),paste("--db-password",db.password),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.register.volume <- function (ec.2.volume.id=NULL,stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks register-volume",
                 ifelse(!is.null(ec.2.volume.id),paste("--ec-2-volume-id",ec.2.volume.id),""),
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.set.load.based.auto.scaling <- function (layer.id=NULL,enable=FALSE,no.enable=FALSE,up.scaling=NULL,down.scaling=NULL,cli.input.json=NULL) {
    if(enable && no.enable) stop("please set either enable or no.enable")
    cmd <- paste("aws opsworks set-load-based-auto-scaling",
                 ifelse(!is.null(layer.id),paste("--layer-id",layer.id),""),
                 ifelse(enable,"--enable",""),
                 ifelse(no.enable,"--no-enable",""),
                 ifelse(!is.null(up.scaling),paste("--up-scaling",up.scaling),""),
                 ifelse(!is.null(down.scaling),paste("--down-scaling",down.scaling),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.set.permission <- function (stack.id=NULL,iam.user.arn=NULL,allow.ssh=FALSE,no.allow.ssh=FALSE,allow.sudo=FALSE,no.allow.sudo=FALSE,level=NULL,cli.input.json=NULL) {
    if(allow.ssh && no.allow.ssh) stop("please set either allow.ssh or no.allow.ssh")
    if(allow.sudo && no.allow.sudo) stop("please set either allow.sudo or no.allow.sudo")
    cmd <- paste("aws opsworks set-permission",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(iam.user.arn),paste("--iam-user-arn",iam.user.arn),""),
                 ifelse(allow.ssh,"--allow-ssh",""),
                 ifelse(no.allow.ssh,"--no-allow-ssh",""),
                 ifelse(allow.sudo,"--allow-sudo",""),
                 ifelse(no.allow.sudo,"--no-allow-sudo",""),
                 ifelse(!is.null(level),paste("--level",level),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.set.time.based.auto.scaling <- function (instance.id=NULL,auto.scaling.schedule=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks set-time-based-auto-scaling",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(auto.scaling.schedule),paste("--auto-scaling-schedule",auto.scaling.schedule),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.start.instance <- function (instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks start-instance",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.start.stack <- function (stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks start-stack",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.stop.instance <- function (instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks stop-instance",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.stop.stack <- function (stack.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks stop-stack",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.unassign.instance <- function (instance.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks unassign-instance",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.unassign.volume <- function (volume.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks unassign-volume",
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.app <- function (app.id=NULL,name=NULL,description=NULL,data.sources=NULL,type=NULL,app.source=NULL,domains=NULL,enable.ssl=FALSE,no.enable.ssl=FALSE,ssl.configuration=NULL,attributes=NULL,environment=NULL,cli.input.json=NULL) {
    if(enable.ssl && no.enable.ssl) stop("please set either enable.ssl or no.enable.ssl")
    cmd <- paste("aws opsworks update-app",
                 ifelse(!is.null(app.id),paste("--app-id",app.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(data.sources),paste("--data-sources",data.sources),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(app.source),paste("--app-source",app.source),""),
                 ifelse(!is.null(domains),paste("--domains",domains),""),
                 ifelse(enable.ssl,"--enable-ssl",""),
                 ifelse(no.enable.ssl,"--no-enable-ssl",""),
                 ifelse(!is.null(ssl.configuration),paste("--ssl-configuration",ssl.configuration),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(environment),paste("--environment",environment),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.elastic.ip <- function (elastic.ip=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks update-elastic-ip",
                 ifelse(!is.null(elastic.ip),paste("--elastic-ip",elastic.ip),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.instance <- function (instance.id=NULL,layer.ids=NULL,instance.type=NULL,auto.scaling.type=NULL,hostname=NULL,os=NULL,ami.id=NULL,ssh.key.name=NULL,architecture=NULL,install.updates.on.boot=FALSE,no.install.updates.on.boot=FALSE,ebs.optimized=FALSE,no.ebs.optimized=FALSE,agent.version=NULL,cli.input.json=NULL) {
    if(install.updates.on.boot && no.install.updates.on.boot) stop("please set either install.updates.on.boot or no.install.updates.on.boot")
    if(ebs.optimized && no.ebs.optimized) stop("please set either ebs.optimized or no.ebs.optimized")
    cmd <- paste("aws opsworks update-instance",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(layer.ids),paste("--layer-ids",layer.ids),""),
                 ifelse(!is.null(instance.type),paste("--instance-type",instance.type),""),
                 ifelse(!is.null(auto.scaling.type),paste("--auto-scaling-type",auto.scaling.type),""),
                 ifelse(!is.null(hostname),paste("--hostname",hostname),""),
                 ifelse(!is.null(os),paste("--os",os),""),
                 ifelse(!is.null(ami.id),paste("--ami-id",ami.id),""),
                 ifelse(!is.null(ssh.key.name),paste("--ssh-key-name",ssh.key.name),""),
                 ifelse(!is.null(architecture),paste("--architecture",architecture),""),
                 ifelse(install.updates.on.boot,"--install-updates-on-boot",""),
                 ifelse(no.install.updates.on.boot,"--no-install-updates-on-boot",""),
                 ifelse(ebs.optimized,"--ebs-optimized",""),
                 ifelse(no.ebs.optimized,"--no-ebs-optimized",""),
                 ifelse(!is.null(agent.version),paste("--agent-version",agent.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.layer <- function (layer.id=NULL,name=NULL,shortname=NULL,attributes=NULL,custom.instance.profile.arn=NULL,custom.json=NULL,custom.security.group.ids=NULL,packages=NULL,volume.configurations=NULL,enable.auto.healing=FALSE,no.enable.auto.healing=FALSE,auto.assign.elastic.ips=FALSE,no.auto.assign.elastic.ips=FALSE,auto.assign.public.ips=FALSE,no.auto.assign.public.ips=FALSE,custom.recipes=NULL,install.updates.on.boot=FALSE,no.install.updates.on.boot=FALSE,use.ebs.optimized.instances=FALSE,no.use.ebs.optimized.instances=FALSE,lifecycle.event.configuration=NULL,cli.input.json=NULL) {
    if(enable.auto.healing && no.enable.auto.healing) stop("please set either enable.auto.healing or no.enable.auto.healing")
    if(auto.assign.elastic.ips && no.auto.assign.elastic.ips) stop("please set either auto.assign.elastic.ips or no.auto.assign.elastic.ips")
    if(auto.assign.public.ips && no.auto.assign.public.ips) stop("please set either auto.assign.public.ips or no.auto.assign.public.ips")
    if(install.updates.on.boot && no.install.updates.on.boot) stop("please set either install.updates.on.boot or no.install.updates.on.boot")
    if(use.ebs.optimized.instances && no.use.ebs.optimized.instances) stop("please set either use.ebs.optimized.instances or no.use.ebs.optimized.instances")
    cmd <- paste("aws opsworks update-layer",
                 ifelse(!is.null(layer.id),paste("--layer-id",layer.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(shortname),paste("--shortname",shortname),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(custom.instance.profile.arn),paste("--custom-instance-profile-arn",custom.instance.profile.arn),""),
                 ifelse(!is.null(custom.json),paste("--custom-json",custom.json),""),
                 ifelse(!is.null(custom.security.group.ids),paste("--custom-security-group-ids",custom.security.group.ids),""),
                 ifelse(!is.null(packages),paste("--packages",packages),""),
                 ifelse(!is.null(volume.configurations),paste("--volume-configurations",volume.configurations),""),
                 ifelse(enable.auto.healing,"--enable-auto-healing",""),
                 ifelse(no.enable.auto.healing,"--no-enable-auto-healing",""),
                 ifelse(auto.assign.elastic.ips,"--auto-assign-elastic-ips",""),
                 ifelse(no.auto.assign.elastic.ips,"--no-auto-assign-elastic-ips",""),
                 ifelse(auto.assign.public.ips,"--auto-assign-public-ips",""),
                 ifelse(no.auto.assign.public.ips,"--no-auto-assign-public-ips",""),
                 ifelse(!is.null(custom.recipes),paste("--custom-recipes",custom.recipes),""),
                 ifelse(install.updates.on.boot,"--install-updates-on-boot",""),
                 ifelse(no.install.updates.on.boot,"--no-install-updates-on-boot",""),
                 ifelse(use.ebs.optimized.instances,"--use-ebs-optimized-instances",""),
                 ifelse(no.use.ebs.optimized.instances,"--no-use-ebs-optimized-instances",""),
                 ifelse(!is.null(lifecycle.event.configuration),paste("--lifecycle-event-configuration",lifecycle.event.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.my.user.profile <- function (ssh.public.key=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks update-my-user-profile",
                 ifelse(!is.null(ssh.public.key),paste("--ssh-public-key",ssh.public.key),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.rds.db.instance <- function (rds.db.instance.arn=NULL,db.user=NULL,db.password=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks update-rds-db-instance",
                 ifelse(!is.null(rds.db.instance.arn),paste("--rds-db-instance-arn",rds.db.instance.arn),""),
                 ifelse(!is.null(db.user),paste("--db-user",db.user),""),
                 ifelse(!is.null(db.password),paste("--db-password",db.password),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.stack <- function (stack.id=NULL,name=NULL,attributes=NULL,service.role.arn=NULL,default.instance.profile.arn=NULL,default.os=NULL,hostname.theme=NULL,default.availability.zone=NULL,default.subnet.id=NULL,custom.json=NULL,configuration.manager=NULL,chef.configuration=NULL,use.custom.cookbooks=FALSE,no.use.custom.cookbooks=FALSE,custom.cookbooks.source=NULL,default.ssh.key.name=NULL,default.root.device.type=NULL,use.opsworks.security.groups=FALSE,no.use.opsworks.security.groups=FALSE,agent.version=NULL,cli.input.json=NULL) {
    if(use.custom.cookbooks && no.use.custom.cookbooks) stop("please set either use.custom.cookbooks or no.use.custom.cookbooks")
    if(use.opsworks.security.groups && no.use.opsworks.security.groups) stop("please set either use.opsworks.security.groups or no.use.opsworks.security.groups")
    cmd <- paste("aws opsworks update-stack",
                 ifelse(!is.null(stack.id),paste("--stack-id",stack.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(service.role.arn),paste("--service-role-arn",service.role.arn),""),
                 ifelse(!is.null(default.instance.profile.arn),paste("--default-instance-profile-arn",default.instance.profile.arn),""),
                 ifelse(!is.null(default.os),paste("--default-os",default.os),""),
                 ifelse(!is.null(hostname.theme),paste("--hostname-theme",hostname.theme),""),
                 ifelse(!is.null(default.availability.zone),paste("--default-availability-zone",default.availability.zone),""),
                 ifelse(!is.null(default.subnet.id),paste("--default-subnet-id",default.subnet.id),""),
                 ifelse(!is.null(custom.json),paste("--custom-json",custom.json),""),
                 ifelse(!is.null(configuration.manager),paste("--configuration-manager",configuration.manager),""),
                 ifelse(!is.null(chef.configuration),paste("--chef-configuration",chef.configuration),""),
                 ifelse(use.custom.cookbooks,"--use-custom-cookbooks",""),
                 ifelse(no.use.custom.cookbooks,"--no-use-custom-cookbooks",""),
                 ifelse(!is.null(custom.cookbooks.source),paste("--custom-cookbooks-source",custom.cookbooks.source),""),
                 ifelse(!is.null(default.ssh.key.name),paste("--default-ssh-key-name",default.ssh.key.name),""),
                 ifelse(!is.null(default.root.device.type),paste("--default-root-device-type",default.root.device.type),""),
                 ifelse(use.opsworks.security.groups,"--use-opsworks-security-groups",""),
                 ifelse(no.use.opsworks.security.groups,"--no-use-opsworks-security-groups",""),
                 ifelse(!is.null(agent.version),paste("--agent-version",agent.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.user.profile <- function (iam.user.arn=NULL,ssh.username=NULL,ssh.public.key=NULL,allow.self.management=FALSE,no.allow.self.management=FALSE,cli.input.json=NULL) {
    if(allow.self.management && no.allow.self.management) stop("please set either allow.self.management or no.allow.self.management")
    cmd <- paste("aws opsworks update-user-profile",
                 ifelse(!is.null(iam.user.arn),paste("--iam-user-arn",iam.user.arn),""),
                 ifelse(!is.null(ssh.username),paste("--ssh-username",ssh.username),""),
                 ifelse(!is.null(ssh.public.key),paste("--ssh-public-key",ssh.public.key),""),
                 ifelse(allow.self.management,"--allow-self-management",""),
                 ifelse(no.allow.self.management,"--no-allow-self-management",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
opsworks.update.volume <- function (volume.id=NULL,name=NULL,mount.point=NULL,cli.input.json=NULL) {
    cmd <- paste("aws opsworks update-volume",
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(mount.point),paste("--mount-point",mount.point),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
