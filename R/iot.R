iot.accept.certificate.transfer <- function (certificate.id=NULL,set.as.active=FALSE,no.set.as.active=FALSE,cli.input.json=NULL) {
    if(set.as.active && no.set.as.active) stop("please set either set.as.active or no.set.as.active")
    cmd <- paste("aws iot accept-certificate-transfer",
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(set.as.active,"--set-as-active",""),
                 ifelse(no.set.as.active,"--no-set-as-active",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.attach.principal.policy <- function (policy.name=NULL,principal=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot attach-principal-policy",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(principal),paste("--principal",principal),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.attach.thing.principal <- function (thing.name=NULL,principal=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot attach-thing-principal",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(principal),paste("--principal",principal),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.cancel.certificate.transfer <- function (certificate.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot cancel-certificate-transfer",
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.create.certificate.from.csr <- function (certificate.signing.request=NULL,set.as.active=FALSE,no.set.as.active=FALSE,certificate.pem.outfile=NULL,cli.input.json=NULL) {
    if(set.as.active && no.set.as.active) stop("please set either set.as.active or no.set.as.active")
    cmd <- paste("aws iot create-certificate-from-csr",
                 ifelse(!is.null(certificate.signing.request),paste("--certificate-signing-request",certificate.signing.request),""),
                 ifelse(set.as.active,"--set-as-active",""),
                 ifelse(no.set.as.active,"--no-set-as-active",""),
                 ifelse(!is.null(certificate.pem.outfile),paste("--certificate-pem-outfile",certificate.pem.outfile),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.create.keys.and.certificate <- function (set.as.active=FALSE,no.set.as.active=FALSE,certificate.pem.outfile=NULL,public.key.outfile=NULL,private.key.outfile=NULL,cli.input.json=NULL) {
    if(set.as.active && no.set.as.active) stop("please set either set.as.active or no.set.as.active")
    cmd <- paste("aws iot create-keys-and-certificate",
                 ifelse(set.as.active,"--set-as-active",""),
                 ifelse(no.set.as.active,"--no-set-as-active",""),
                 ifelse(!is.null(certificate.pem.outfile),paste("--certificate-pem-outfile",certificate.pem.outfile),""),
                 ifelse(!is.null(public.key.outfile),paste("--public-key-outfile",public.key.outfile),""),
                 ifelse(!is.null(private.key.outfile),paste("--private-key-outfile",private.key.outfile),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.create.policy <- function (policy.name=NULL,policy.document=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot create-policy",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.create.policy.version <- function (policy.name=NULL,policy.document=NULL,set.as.default=FALSE,no.set.as.default=FALSE,cli.input.json=NULL) {
    if(set.as.default && no.set.as.default) stop("please set either set.as.default or no.set.as.default")
    cmd <- paste("aws iot create-policy-version",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(set.as.default,"--set-as-default",""),
                 ifelse(no.set.as.default,"--no-set-as-default",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.create.thing <- function (thing.name=NULL,attribute.payload=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot create-thing",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(attribute.payload),paste("--attribute-payload",attribute.payload),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.create.topic.rule <- function (rule.name=NULL,topic.rule.payload=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot create-topic-rule",
                 ifelse(!is.null(rule.name),paste("--rule-name",rule.name),""),
                 ifelse(!is.null(topic.rule.payload),paste("--topic-rule-payload",topic.rule.payload),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.delete.certificate <- function (certificate.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot delete-certificate",
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.delete.policy <- function (policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot delete-policy",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.delete.policy.version <- function (policy.name=NULL,policy.version.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot delete-policy-version",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.version.id),paste("--policy-version-id",policy.version.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.delete.thing <- function (thing.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot delete-thing",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.delete.topic.rule <- function (rule.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot delete-topic-rule",
                 ifelse(!is.null(rule.name),paste("--rule-name",rule.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.describe.certificate <- function (certificate.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot describe-certificate",
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.describe.endpoint <- function (cli.input.json=NULL) {
    cmd <- paste("aws iot describe-endpoint",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.describe.thing <- function (thing.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot describe-thing",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.detach.principal.policy <- function (policy.name=NULL,principal=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot detach-principal-policy",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(principal),paste("--principal",principal),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.detach.thing.principal <- function (thing.name=NULL,principal=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot detach-thing-principal",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(principal),paste("--principal",principal),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.get.logging.options <- function (cli.input.json=NULL) {
    cmd <- paste("aws iot get-logging-options",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.get.policy <- function (policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot get-policy",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.get.policy.version <- function (policy.name=NULL,policy.version.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot get-policy-version",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.version.id),paste("--policy-version-id",policy.version.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.get.topic.rule <- function (rule.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot get-topic-rule",
                 ifelse(!is.null(rule.name),paste("--rule-name",rule.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.list.certificates <- function (page.size=NULL,marker=NULL,ascending.order=FALSE,no.ascending.order=FALSE,cli.input.json=NULL) {
    if(ascending.order && no.ascending.order) stop("please set either ascending.order or no.ascending.order")
    cmd <- paste("aws iot list-certificates",
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(ascending.order,"--ascending-order",""),
                 ifelse(no.ascending.order,"--no-ascending-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.list.policies <- function (marker=NULL,page.size=NULL,ascending.order=FALSE,no.ascending.order=FALSE,cli.input.json=NULL) {
    if(ascending.order && no.ascending.order) stop("please set either ascending.order or no.ascending.order")
    cmd <- paste("aws iot list-policies",
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(ascending.order,"--ascending-order",""),
                 ifelse(no.ascending.order,"--no-ascending-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.list.policy.versions <- function (policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot list-policy-versions",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.list.principal.policies <- function (principal=NULL,marker=NULL,page.size=NULL,ascending.order=FALSE,no.ascending.order=FALSE,cli.input.json=NULL) {
    if(ascending.order && no.ascending.order) stop("please set either ascending.order or no.ascending.order")
    cmd <- paste("aws iot list-principal-policies",
                 ifelse(!is.null(principal),paste("--principal",principal),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(ascending.order,"--ascending-order",""),
                 ifelse(no.ascending.order,"--no-ascending-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.list.principal.things <- function (next.token=NULL,max.results=NULL,principal=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot list-principal-things",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(principal),paste("--principal",principal),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.list.thing.principals <- function (thing.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot list-thing-principals",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.list.things <- function (next.token=NULL,max.results=NULL,attribute.name=NULL,attribute.value=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot list-things",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(attribute.name),paste("--attribute-name",attribute.name),""),
                 ifelse(!is.null(attribute.value),paste("--attribute-value",attribute.value),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.list.topic.rules <- function (topic=NULL,max.results=NULL,next.token=NULL,rule.disabled=FALSE,no.rule.disabled=FALSE,cli.input.json=NULL) {
    if(rule.disabled && no.rule.disabled) stop("please set either rule.disabled or no.rule.disabled")
    cmd <- paste("aws iot list-topic-rules",
                 ifelse(!is.null(topic),paste("--topic",topic),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(rule.disabled,"--rule-disabled",""),
                 ifelse(no.rule.disabled,"--no-rule-disabled",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.reject.certificate.transfer <- function (certificate.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot reject-certificate-transfer",
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.replace.topic.rule <- function (rule.name=NULL,topic.rule.payload=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot replace-topic-rule",
                 ifelse(!is.null(rule.name),paste("--rule-name",rule.name),""),
                 ifelse(!is.null(topic.rule.payload),paste("--topic-rule-payload",topic.rule.payload),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.set.default.policy.version <- function (policy.name=NULL,policy.version.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot set-default-policy-version",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.version.id),paste("--policy-version-id",policy.version.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.set.logging.options <- function (logging.options.payload=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot set-logging-options",
                 ifelse(!is.null(logging.options.payload),paste("--logging-options-payload",logging.options.payload),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.transfer.certificate <- function (certificate.id=NULL,target.aws.account=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot transfer-certificate",
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(!is.null(target.aws.account),paste("--target-aws-account",target.aws.account),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.update.certificate <- function (certificate.id=NULL,new.status=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot update-certificate",
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(!is.null(new.status),paste("--new-status",new.status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot.update.thing <- function (thing.name=NULL,attribute.payload=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot update-thing",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(attribute.payload),paste("--attribute-payload",attribute.payload),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
