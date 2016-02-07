elb.add.tags <- function (load.balancer.names=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb add-tags",
                 ifelse(!is.null(load.balancer.names),paste("--load-balancer-names",load.balancer.names),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.apply.security.groups.to.load.balancer <- function (load.balancer.name=NULL,security.groups=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb apply-security-groups-to-load-balancer",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(security.groups),paste("--security-groups",security.groups),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.attach.load.balancer.to.subnets <- function (load.balancer.name=NULL,subnets=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb attach-load-balancer-to-subnets",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(subnets),paste("--subnets",subnets),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.configure.health.check <- function (load.balancer.name=NULL,health.check=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb configure-health-check",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(health.check),paste("--health-check",health.check),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.create.app.cookie.stickiness.policy <- function (load.balancer.name=NULL,policy.name=NULL,cookie.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb create-app-cookie-stickiness-policy",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cookie.name),paste("--cookie-name",cookie.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.create.lb.cookie.stickiness.policy <- function (load.balancer.name=NULL,policy.name=NULL,cookie.expiration.period=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb create-lb-cookie-stickiness-policy",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cookie.expiration.period),paste("--cookie-expiration-period",cookie.expiration.period),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.create.load.balancer <- function (load.balancer.name=NULL,listeners=NULL,availability.zones=NULL,subnets=NULL,security.groups=NULL,scheme=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb create-load-balancer",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(listeners),paste("--listeners",listeners),""),
                 ifelse(!is.null(availability.zones),paste("--availability-zones",availability.zones),""),
                 ifelse(!is.null(subnets),paste("--subnets",subnets),""),
                 ifelse(!is.null(security.groups),paste("--security-groups",security.groups),""),
                 ifelse(!is.null(scheme),paste("--scheme",scheme),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.create.load.balancer.listeners <- function (load.balancer.name=NULL,listeners=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb create-load-balancer-listeners",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(listeners),paste("--listeners",listeners),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.create.load.balancer.policy <- function (load.balancer.name=NULL,policy.name=NULL,policy.type.name=NULL,policy.attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb create-load-balancer-policy",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.type.name),paste("--policy-type-name",policy.type.name),""),
                 ifelse(!is.null(policy.attributes),paste("--policy-attributes",policy.attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.delete.load.balancer <- function (load.balancer.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb delete-load-balancer",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.delete.load.balancer.listeners <- function (load.balancer.name=NULL,load.balancer.ports=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb delete-load-balancer-listeners",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(load.balancer.ports),paste("--load-balancer-ports",load.balancer.ports),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.delete.load.balancer.policy <- function (load.balancer.name=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb delete-load-balancer-policy",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.deregister.instances.from.load.balancer <- function (load.balancer.name=NULL,instances=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb deregister-instances-from-load-balancer",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(instances),paste("--instances",instances),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.describe.instance.health <- function (load.balancer.name=NULL,instances=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb describe-instance-health",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(instances),paste("--instances",instances),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.describe.load.balancer.attributes <- function (load.balancer.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb describe-load-balancer-attributes",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.describe.load.balancer.policies <- function (load.balancer.name=NULL,policy.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb describe-load-balancer-policies",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(policy.names),paste("--policy-names",policy.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.describe.load.balancer.policy.types <- function (policy.type.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb describe-load-balancer-policy-types",
                 ifelse(!is.null(policy.type.names),paste("--policy-type-names",policy.type.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.describe.load.balancers <- function (load.balancer.names=NULL,page.size=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws elb describe-load-balancers",
                 ifelse(!is.null(load.balancer.names),paste("--load-balancer-names",load.balancer.names),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elb.describe.tags <- function (load.balancer.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb describe-tags",
                 ifelse(!is.null(load.balancer.names),paste("--load-balancer-names",load.balancer.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.detach.load.balancer.from.subnets <- function (load.balancer.name=NULL,subnets=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb detach-load-balancer-from-subnets",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(subnets),paste("--subnets",subnets),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.disable.availability.zones.for.load.balancer <- function (load.balancer.name=NULL,availability.zones=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb disable-availability-zones-for-load-balancer",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(availability.zones),paste("--availability-zones",availability.zones),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.enable.availability.zones.for.load.balancer <- function (load.balancer.name=NULL,availability.zones=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb enable-availability-zones-for-load-balancer",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(availability.zones),paste("--availability-zones",availability.zones),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.modify.load.balancer.attributes <- function (load.balancer.name=NULL,load.balancer.attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb modify-load-balancer-attributes",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(load.balancer.attributes),paste("--load-balancer-attributes",load.balancer.attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.register.instances.with.load.balancer <- function (load.balancer.name=NULL,instances=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb register-instances-with-load-balancer",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(instances),paste("--instances",instances),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.remove.tags <- function (load.balancer.names=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb remove-tags",
                 ifelse(!is.null(load.balancer.names),paste("--load-balancer-names",load.balancer.names),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.set.load.balancer.listener.ssl.certificate <- function (load.balancer.name=NULL,load.balancer.port=NULL,ssl.certificate.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb set-load-balancer-listener-ssl-certificate",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(load.balancer.port),paste("--load-balancer-port",load.balancer.port),""),
                 ifelse(!is.null(ssl.certificate.id),paste("--ssl-certificate-id",ssl.certificate.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.set.load.balancer.policies.for.backend.server <- function (load.balancer.name=NULL,instance.port=NULL,policy.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb set-load-balancer-policies-for-backend-server",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(instance.port),paste("--instance-port",instance.port),""),
                 ifelse(!is.null(policy.names),paste("--policy-names",policy.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elb.set.load.balancer.policies.of.listener <- function (load.balancer.name=NULL,load.balancer.port=NULL,policy.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elb set-load-balancer-policies-of-listener",
                 ifelse(!is.null(load.balancer.name),paste("--load-balancer-name",load.balancer.name),""),
                 ifelse(!is.null(load.balancer.port),paste("--load-balancer-port",load.balancer.port),""),
                 ifelse(!is.null(policy.names),paste("--policy-names",policy.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
