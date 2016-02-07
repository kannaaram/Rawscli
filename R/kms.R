kms.cancel.key.deletion <- function (key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms cancel-key-deletion",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.create.alias <- function (alias.name=NULL,target.key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms create-alias",
                 ifelse(!is.null(alias.name),paste("--alias-name",alias.name),""),
                 ifelse(!is.null(target.key.id),paste("--target-key-id",target.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.create.grant <- function (key.id=NULL,grantee.principal=NULL,retiring.principal=NULL,operations=NULL,constraints=NULL,grant.tokens=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms create-grant",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(grantee.principal),paste("--grantee-principal",grantee.principal),""),
                 ifelse(!is.null(retiring.principal),paste("--retiring-principal",retiring.principal),""),
                 ifelse(!is.null(operations),paste("--operations",operations),""),
                 ifelse(!is.null(constraints),paste("--constraints",constraints),""),
                 ifelse(!is.null(grant.tokens),paste("--grant-tokens",grant.tokens),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.create.key <- function (policy=NULL,description=NULL,key.usage=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms create-key",
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(key.usage),paste("--key-usage",key.usage),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.decrypt <- function (ciphertext.blob=NULL,encryption.context=NULL,grant.tokens=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms decrypt",
                 ifelse(!is.null(ciphertext.blob),paste("--ciphertext-blob",ciphertext.blob),""),
                 ifelse(!is.null(encryption.context),paste("--encryption-context",encryption.context),""),
                 ifelse(!is.null(grant.tokens),paste("--grant-tokens",grant.tokens),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.delete.alias <- function (alias.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms delete-alias",
                 ifelse(!is.null(alias.name),paste("--alias-name",alias.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.describe.key <- function (key.id=NULL,grant.tokens=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms describe-key",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(grant.tokens),paste("--grant-tokens",grant.tokens),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.disable.key <- function (key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms disable-key",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.disable.key.rotation <- function (key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms disable-key-rotation",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.enable.key <- function (key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms enable-key",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.enable.key.rotation <- function (key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms enable-key-rotation",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.encrypt <- function (key.id=NULL,plaintext=NULL,encryption.context=NULL,grant.tokens=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms encrypt",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(plaintext),paste("--plaintext",plaintext),""),
                 ifelse(!is.null(encryption.context),paste("--encryption-context",encryption.context),""),
                 ifelse(!is.null(grant.tokens),paste("--grant-tokens",grant.tokens),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.generate.data.key <- function (key.id=NULL,encryption.context=NULL,number.of.bytes=NULL,key.spec=NULL,grant.tokens=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms generate-data-key",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(encryption.context),paste("--encryption-context",encryption.context),""),
                 ifelse(!is.null(number.of.bytes),paste("--number-of-bytes",number.of.bytes),""),
                 ifelse(!is.null(key.spec),paste("--key-spec",key.spec),""),
                 ifelse(!is.null(grant.tokens),paste("--grant-tokens",grant.tokens),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.generate.data.key.without.plaintext <- function (key.id=NULL,encryption.context=NULL,key.spec=NULL,number.of.bytes=NULL,grant.tokens=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms generate-data-key-without-plaintext",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(encryption.context),paste("--encryption-context",encryption.context),""),
                 ifelse(!is.null(key.spec),paste("--key-spec",key.spec),""),
                 ifelse(!is.null(number.of.bytes),paste("--number-of-bytes",number.of.bytes),""),
                 ifelse(!is.null(grant.tokens),paste("--grant-tokens",grant.tokens),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.generate.random <- function (number.of.bytes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms generate-random",
                 ifelse(!is.null(number.of.bytes),paste("--number-of-bytes",number.of.bytes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.get.key.policy <- function (key.id=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms get-key-policy",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.get.key.rotation.status <- function (key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms get-key-rotation-status",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.list.aliases <- function (limit=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms list-aliases",
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.list.grants <- function (limit=NULL,marker=NULL,key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms list-grants",
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.list.key.policies <- function (key.id=NULL,limit=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms list-key-policies",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.list.keys <- function (limit=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms list-keys",
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.list.retirable.grants <- function (limit=NULL,marker=NULL,retiring.principal=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms list-retirable-grants",
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(retiring.principal),paste("--retiring-principal",retiring.principal),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.put.key.policy <- function (key.id=NULL,policy.name=NULL,policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms put-key-policy",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.re.encrypt <- function (ciphertext.blob=NULL,source.encryption.context=NULL,destination.key.id=NULL,destination.encryption.context=NULL,grant.tokens=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms re-encrypt",
                 ifelse(!is.null(ciphertext.blob),paste("--ciphertext-blob",ciphertext.blob),""),
                 ifelse(!is.null(source.encryption.context),paste("--source-encryption-context",source.encryption.context),""),
                 ifelse(!is.null(destination.key.id),paste("--destination-key-id",destination.key.id),""),
                 ifelse(!is.null(destination.encryption.context),paste("--destination-encryption-context",destination.encryption.context),""),
                 ifelse(!is.null(grant.tokens),paste("--grant-tokens",grant.tokens),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.retire.grant <- function (grant.token=NULL,key.id=NULL,grant.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms retire-grant",
                 ifelse(!is.null(grant.token),paste("--grant-token",grant.token),""),
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(grant.id),paste("--grant-id",grant.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.revoke.grant <- function (key.id=NULL,grant.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms revoke-grant",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(grant.id),paste("--grant-id",grant.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.schedule.key.deletion <- function (key.id=NULL,pending.window.in.days=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms schedule-key-deletion",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(pending.window.in.days),paste("--pending-window-in-days",pending.window.in.days),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.update.alias <- function (alias.name=NULL,target.key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms update-alias",
                 ifelse(!is.null(alias.name),paste("--alias-name",alias.name),""),
                 ifelse(!is.null(target.key.id),paste("--target-key-id",target.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kms.update.key.description <- function (key.id=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kms update-key-description",
                 ifelse(!is.null(key.id),paste("--key-id",key.id),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
