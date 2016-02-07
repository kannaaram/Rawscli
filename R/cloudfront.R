cloudfront.create.cloud.front.origin.access.identity <- function (cloud.front.origin.access.identity.config=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront create-cloud-front-origin-access-identity",
                 ifelse(!is.null(cloud.front.origin.access.identity.config),paste("--cloud-front-origin-access-identity-config",cloud.front.origin.access.identity.config),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.create.distribution <- function (distribution.config=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront create-distribution",
                 ifelse(!is.null(distribution.config),paste("--distribution-config",distribution.config),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.create.invalidation <- function (distribution.id=NULL,invalidation.batch=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront create-invalidation",
                 ifelse(!is.null(distribution.id),paste("--distribution-id",distribution.id),""),
                 ifelse(!is.null(invalidation.batch),paste("--invalidation-batch",invalidation.batch),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.create.streaming.distribution <- function (streaming.distribution.config=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront create-streaming-distribution",
                 ifelse(!is.null(streaming.distribution.config),paste("--streaming-distribution-config",streaming.distribution.config),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.delete.cloud.front.origin.access.identity <- function (id=NULL,if.match=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront delete-cloud-front-origin-access-identity",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(if.match),paste("--if-match",if.match),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.delete.distribution <- function (id=NULL,if.match=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront delete-distribution",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(if.match),paste("--if-match",if.match),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.delete.streaming.distribution <- function (id=NULL,if.match=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront delete-streaming-distribution",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(if.match),paste("--if-match",if.match),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.get.cloud.front.origin.access.identity <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront get-cloud-front-origin-access-identity",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.get.cloud.front.origin.access.identity.config <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront get-cloud-front-origin-access-identity-config",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.get.distribution <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront get-distribution",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.get.distribution.config <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront get-distribution-config",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.get.invalidation <- function (distribution.id=NULL,id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront get-invalidation",
                 ifelse(!is.null(distribution.id),paste("--distribution-id",distribution.id),""),
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.get.streaming.distribution <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront get-streaming-distribution",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.get.streaming.distribution.config <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront get-streaming-distribution-config",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.list.cloud.front.origin.access.identities <- function (max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws cloudfront list-cloud-front-origin-access-identities",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
cloudfront.list.distributions <- function (max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws cloudfront list-distributions",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
cloudfront.list.distributions.by.web.acl.id <- function (marker=NULL,max.items=NULL,web.acl.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront list-distributions-by-web-acl-id",
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(web.acl.id),paste("--web-acl-id",web.acl.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.list.invalidations <- function (distribution.id=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws cloudfront list-invalidations",
                 ifelse(!is.null(distribution.id),paste("--distribution-id",distribution.id),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
cloudfront.list.streaming.distributions <- function (max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws cloudfront list-streaming-distributions",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
cloudfront.update.cloud.front.origin.access.identity <- function (cloud.front.origin.access.identity.config=NULL,id=NULL,if.match=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront update-cloud-front-origin-access-identity",
                 ifelse(!is.null(cloud.front.origin.access.identity.config),paste("--cloud-front-origin-access-identity-config",cloud.front.origin.access.identity.config),""),
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(if.match),paste("--if-match",if.match),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.update.distribution <- function (distribution.config=NULL,id=NULL,if.match=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront update-distribution",
                 ifelse(!is.null(distribution.config),paste("--distribution-config",distribution.config),""),
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(if.match),paste("--if-match",if.match),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudfront.update.streaming.distribution <- function (streaming.distribution.config=NULL,id=NULL,if.match=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudfront update-streaming-distribution",
                 ifelse(!is.null(streaming.distribution.config),paste("--streaming-distribution-config",streaming.distribution.config),""),
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(if.match),paste("--if-match",if.match),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
