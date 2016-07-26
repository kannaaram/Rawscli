cognito.identity.create.identity.pool <- function (identity.pool.name=NULL,allow.unauthenticated.identities=FALSE,no.allow.unauthenticated.identities=FALSE,supported.login.providers=NULL,developer.provider.name=NULL,open.id.connect.provider.arns=NULL,cli.input.json=NULL) {
    if(allow.unauthenticated.identities && no.allow.unauthenticated.identities) stop("please set either allow.unauthenticated.identities or no.allow.unauthenticated.identities")
    cmd <- paste("aws cognito-identity create-identity-pool",
                 ifelse(!is.null(identity.pool.name),paste("--identity-pool-name",identity.pool.name),""),
                 ifelse(allow.unauthenticated.identities,"--allow-unauthenticated-identities",""),
                 ifelse(no.allow.unauthenticated.identities,"--no-allow-unauthenticated-identities",""),
                 ifelse(!is.null(supported.login.providers),paste("--supported-login-providers",supported.login.providers),""),
                 ifelse(!is.null(developer.provider.name),paste("--developer-provider-name",developer.provider.name),""),
                 ifelse(!is.null(open.id.connect.provider.arns),paste("--open-id-connect-provider-arns",open.id.connect.provider.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.delete.identities <- function (identity.ids.to.delete=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity delete-identities",
                 ifelse(!is.null(identity.ids.to.delete),paste("--identity-ids-to-delete",identity.ids.to.delete),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.delete.identity.pool <- function (identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity delete-identity-pool",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.describe.identity <- function (identity.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity describe-identity",
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.describe.identity.pool <- function (identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity describe-identity-pool",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.get.credentials.for.identity <- function (identity.id=NULL,logins=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity get-credentials-for-identity",
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(logins),paste("--logins",logins),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.get.id <- function (account.id=NULL,identity.pool.id=NULL,logins=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity get-id",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(logins),paste("--logins",logins),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.get.identity.pool.roles <- function (identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity get-identity-pool-roles",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.get.open.id.token <- function (identity.id=NULL,logins=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity get-open-id-token",
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(logins),paste("--logins",logins),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.get.open.id.token.for.developer.identity <- function (identity.pool.id=NULL,identity.id=NULL,logins=NULL,token.duration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity get-open-id-token-for-developer-identity",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(logins),paste("--logins",logins),""),
                 ifelse(!is.null(token.duration),paste("--token-duration",token.duration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.list.identities <- function (identity.pool.id=NULL,max.results=NULL,next.token=NULL,hide.disabled=FALSE,no.hide.disabled=FALSE,cli.input.json=NULL) {
    if(hide.disabled && no.hide.disabled) stop("please set either hide.disabled or no.hide.disabled")
    cmd <- paste("aws cognito-identity list-identities",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(hide.disabled,"--hide-disabled",""),
                 ifelse(no.hide.disabled,"--no-hide-disabled",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.list.identity.pools <- function (max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity list-identity-pools",
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.lookup.developer.identity <- function (identity.pool.id=NULL,identity.id=NULL,developer.user.identifier=NULL,max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity lookup-developer-identity",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(developer.user.identifier),paste("--developer-user-identifier",developer.user.identifier),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.merge.developer.identities <- function (source.user.identifier=NULL,destination.user.identifier=NULL,developer.provider.name=NULL,identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity merge-developer-identities",
                 ifelse(!is.null(source.user.identifier),paste("--source-user-identifier",source.user.identifier),""),
                 ifelse(!is.null(destination.user.identifier),paste("--destination-user-identifier",destination.user.identifier),""),
                 ifelse(!is.null(developer.provider.name),paste("--developer-provider-name",developer.provider.name),""),
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.set.identity.pool.roles <- function (identity.pool.id=NULL,roles=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity set-identity-pool-roles",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(roles),paste("--roles",roles),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.unlink.developer.identity <- function (identity.id=NULL,identity.pool.id=NULL,developer.provider.name=NULL,developer.user.identifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity unlink-developer-identity",
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(developer.provider.name),paste("--developer-provider-name",developer.provider.name),""),
                 ifelse(!is.null(developer.user.identifier),paste("--developer-user-identifier",developer.user.identifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.unlink.identity <- function (identity.id=NULL,logins=NULL,logins.to.remove=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-identity unlink-identity",
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(logins),paste("--logins",logins),""),
                 ifelse(!is.null(logins.to.remove),paste("--logins-to-remove",logins.to.remove),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito.identity.update.identity.pool <- function (identity.pool.id=NULL,identity.pool.name=NULL,allow.unauthenticated.identities=FALSE,no.allow.unauthenticated.identities=FALSE,supported.login.providers=NULL,developer.provider.name=NULL,open.id.connect.provider.arns=NULL,cli.input.json=NULL) {
    if(allow.unauthenticated.identities && no.allow.unauthenticated.identities) stop("please set either allow.unauthenticated.identities or no.allow.unauthenticated.identities")
    cmd <- paste("aws cognito-identity update-identity-pool",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.pool.name),paste("--identity-pool-name",identity.pool.name),""),
                 ifelse(allow.unauthenticated.identities,"--allow-unauthenticated-identities",""),
                 ifelse(no.allow.unauthenticated.identities,"--no-allow-unauthenticated-identities",""),
                 ifelse(!is.null(supported.login.providers),paste("--supported-login-providers",supported.login.providers),""),
                 ifelse(!is.null(developer.provider.name),paste("--developer-provider-name",developer.provider.name),""),
                 ifelse(!is.null(open.id.connect.provider.arns),paste("--open-id-connect-provider-arns",open.id.connect.provider.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
