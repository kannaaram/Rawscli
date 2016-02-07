route53.associate.vpc.with.hosted.zone <- function (hosted.zone.id=NULL,vpc=NULL,comment=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 associate-vpc-with-hosted-zone",
                 ifelse(!is.null(hosted.zone.id),paste("--hosted-zone-id",hosted.zone.id),""),
                 ifelse(!is.null(vpc),paste("--vpc",vpc),""),
                 ifelse(!is.null(comment),paste("--comment",comment),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.change.resource.record.sets <- function (hosted.zone.id=NULL,change.batch=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 change-resource-record-sets",
                 ifelse(!is.null(hosted.zone.id),paste("--hosted-zone-id",hosted.zone.id),""),
                 ifelse(!is.null(change.batch),paste("--change-batch",change.batch),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.change.tags.for.resource <- function (resource.type=NULL,resource.id=NULL,add.tags=NULL,remove.tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 change-tags-for-resource",
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(add.tags),paste("--add-tags",add.tags),""),
                 ifelse(!is.null(remove.tag.keys),paste("--remove-tag-keys",remove.tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.create.health.check <- function (caller.reference=NULL,health.check.config=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 create-health-check",
                 ifelse(!is.null(caller.reference),paste("--caller-reference",caller.reference),""),
                 ifelse(!is.null(health.check.config),paste("--health-check-config",health.check.config),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.create.hosted.zone <- function (name=NULL,vpc=NULL,caller.reference=NULL,hosted.zone.config=NULL,delegation.set.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 create-hosted-zone",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(vpc),paste("--vpc",vpc),""),
                 ifelse(!is.null(caller.reference),paste("--caller-reference",caller.reference),""),
                 ifelse(!is.null(hosted.zone.config),paste("--hosted-zone-config",hosted.zone.config),""),
                 ifelse(!is.null(delegation.set.id),paste("--delegation-set-id",delegation.set.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.create.reusable.delegation.set <- function (caller.reference=NULL,hosted.zone.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 create-reusable-delegation-set",
                 ifelse(!is.null(caller.reference),paste("--caller-reference",caller.reference),""),
                 ifelse(!is.null(hosted.zone.id),paste("--hosted-zone-id",hosted.zone.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.delete.health.check <- function (health.check.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 delete-health-check",
                 ifelse(!is.null(health.check.id),paste("--health-check-id",health.check.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.delete.hosted.zone <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 delete-hosted-zone",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.delete.reusable.delegation.set <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 delete-reusable-delegation-set",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.disassociate.vpc.from.hosted.zone <- function (hosted.zone.id=NULL,vpc=NULL,comment=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 disassociate-vpc-from-hosted-zone",
                 ifelse(!is.null(hosted.zone.id),paste("--hosted-zone-id",hosted.zone.id),""),
                 ifelse(!is.null(vpc),paste("--vpc",vpc),""),
                 ifelse(!is.null(comment),paste("--comment",comment),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.change <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 get-change",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.checker.ip.ranges <- function (cli.input.json=NULL) {
    cmd <- paste("aws route53 get-checker-ip-ranges",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.geo.location <- function (continent.code=NULL,country.code=NULL,subdivision.code=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 get-geo-location",
                 ifelse(!is.null(continent.code),paste("--continent-code",continent.code),""),
                 ifelse(!is.null(country.code),paste("--country-code",country.code),""),
                 ifelse(!is.null(subdivision.code),paste("--subdivision-code",subdivision.code),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.health.check <- function (health.check.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 get-health-check",
                 ifelse(!is.null(health.check.id),paste("--health-check-id",health.check.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.health.check.count <- function (cli.input.json=NULL) {
    cmd <- paste("aws route53 get-health-check-count",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.health.check.last.failure.reason <- function (health.check.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 get-health-check-last-failure-reason",
                 ifelse(!is.null(health.check.id),paste("--health-check-id",health.check.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.health.check.status <- function (health.check.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 get-health-check-status",
                 ifelse(!is.null(health.check.id),paste("--health-check-id",health.check.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.hosted.zone <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 get-hosted-zone",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.hosted.zone.count <- function (cli.input.json=NULL) {
    cmd <- paste("aws route53 get-hosted-zone-count",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.get.reusable.delegation.set <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 get-reusable-delegation-set",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.list.geo.locations <- function (start.continent.code=NULL,start.country.code=NULL,start.subdivision.code=NULL,max.items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 list-geo-locations",
                 ifelse(!is.null(start.continent.code),paste("--start-continent-code",start.continent.code),""),
                 ifelse(!is.null(start.country.code),paste("--start-country-code",start.country.code),""),
                 ifelse(!is.null(start.subdivision.code),paste("--start-subdivision-code",start.subdivision.code),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.list.health.checks <- function (max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws route53 list-health-checks",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
route53.list.hosted.zones <- function (max.items=NULL,delegation.set.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws route53 list-hosted-zones",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(delegation.set.id),paste("--delegation-set-id",delegation.set.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
route53.list.hosted.zones.by.name <- function (dns.name=NULL,hosted.zone.id=NULL,max.items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 list-hosted-zones-by-name",
                 ifelse(!is.null(dns.name),paste("--dns-name",dns.name),""),
                 ifelse(!is.null(hosted.zone.id),paste("--hosted-zone-id",hosted.zone.id),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.list.resource.record.sets <- function (hosted.zone.id=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws route53 list-resource-record-sets",
                 ifelse(!is.null(hosted.zone.id),paste("--hosted-zone-id",hosted.zone.id),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
route53.list.reusable.delegation.sets <- function (marker=NULL,max.items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 list-reusable-delegation-sets",
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.list.tags.for.resource <- function (resource.type=NULL,resource.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 list-tags-for-resource",
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.list.tags.for.resources <- function (resource.type=NULL,resource.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 list-tags-for-resources",
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(resource.ids),paste("--resource-ids",resource.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.update.health.check <- function (health.check.id=NULL,health.check.version=NULL,ip.address=NULL,port=NULL,resource.path=NULL,fully.qualified.domain.name=NULL,search.string=NULL,failure.threshold=NULL,inverted=FALSE,no.inverted=FALSE,health.threshold=NULL,child.health.checks=NULL,cli.input.json=NULL) {
    if(inverted && no.inverted) stop("please set either inverted or no.inverted")
    cmd <- paste("aws route53 update-health-check",
                 ifelse(!is.null(health.check.id),paste("--health-check-id",health.check.id),""),
                 ifelse(!is.null(health.check.version),paste("--health-check-version",health.check.version),""),
                 ifelse(!is.null(ip.address),paste("--ip-address",ip.address),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(resource.path),paste("--resource-path",resource.path),""),
                 ifelse(!is.null(fully.qualified.domain.name),paste("--fully-qualified-domain-name",fully.qualified.domain.name),""),
                 ifelse(!is.null(search.string),paste("--search-string",search.string),""),
                 ifelse(!is.null(failure.threshold),paste("--failure-threshold",failure.threshold),""),
                 ifelse(inverted,"--inverted",""),
                 ifelse(no.inverted,"--no-inverted",""),
                 ifelse(!is.null(health.threshold),paste("--health-threshold",health.threshold),""),
                 ifelse(!is.null(child.health.checks),paste("--child-health-checks",child.health.checks),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53.update.hosted.zone.comment <- function (id=NULL,comment=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53 update-hosted-zone-comment",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(comment),paste("--comment",comment),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
