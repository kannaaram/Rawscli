ses.clone.receipt.rule.set <- function (rule.set.name=NULL,original.rule.set.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses clone-receipt-rule-set",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(original.rule.set.name),paste("--original-rule-set-name",original.rule.set.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.create.receipt.filter <- function (filter=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses create-receipt-filter",
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.create.receipt.rule <- function (rule.set.name=NULL,after=NULL,rule=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses create-receipt-rule",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(after),paste("--after",after),""),
                 ifelse(!is.null(rule),paste("--rule",rule),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.create.receipt.rule.set <- function (rule.set.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses create-receipt-rule-set",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.delete.identity <- function (identity=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses delete-identity",
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.delete.identity.policy <- function (identity=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses delete-identity-policy",
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.delete.receipt.filter <- function (filter.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses delete-receipt-filter",
                 ifelse(!is.null(filter.name),paste("--filter-name",filter.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.delete.receipt.rule <- function (rule.set.name=NULL,rule.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses delete-receipt-rule",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(rule.name),paste("--rule-name",rule.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.delete.receipt.rule.set <- function (rule.set.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses delete-receipt-rule-set",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.describe.active.receipt.rule.set <- function (cli.input.json=NULL) {
    cmd <- paste("aws ses describe-active-receipt-rule-set",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.describe.receipt.rule <- function (rule.set.name=NULL,rule.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses describe-receipt-rule",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(rule.name),paste("--rule-name",rule.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.describe.receipt.rule.set <- function (rule.set.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses describe-receipt-rule-set",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.get.identity.dkim.attributes <- function (identities=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses get-identity-dkim-attributes",
                 ifelse(!is.null(identities),paste("--identities",identities),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.get.identity.notification.attributes <- function (identities=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses get-identity-notification-attributes",
                 ifelse(!is.null(identities),paste("--identities",identities),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.get.identity.policies <- function (identity=NULL,policy.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses get-identity-policies",
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(!is.null(policy.names),paste("--policy-names",policy.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.get.identity.verification.attributes <- function (identities=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses get-identity-verification-attributes",
                 ifelse(!is.null(identities),paste("--identities",identities),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.get.send.quota <- function (cli.input.json=NULL) {
    cmd <- paste("aws ses get-send-quota",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.get.send.statistics <- function (cli.input.json=NULL) {
    cmd <- paste("aws ses get-send-statistics",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.list.identities <- function (identity.type=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws ses list-identities",
                 ifelse(!is.null(identity.type),paste("--identity-type",identity.type),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
ses.list.identity.policies <- function (identity=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses list-identity-policies",
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.list.receipt.filters <- function (cli.input.json=NULL) {
    cmd <- paste("aws ses list-receipt-filters",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.list.receipt.rule.sets <- function (next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses list-receipt-rule-sets",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.put.identity.policy <- function (identity=NULL,policy.name=NULL,policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses put-identity-policy",
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.reorder.receipt.rule.set <- function (rule.set.name=NULL,rule.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses reorder-receipt-rule-set",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(rule.names),paste("--rule-names",rule.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.send.bounce <- function (original.message.id=NULL,bounce.sender=NULL,explanation=NULL,message.dsn=NULL,bounced.recipient.info.list=NULL,bounce.sender.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses send-bounce",
                 ifelse(!is.null(original.message.id),paste("--original-message-id",original.message.id),""),
                 ifelse(!is.null(bounce.sender),paste("--bounce-sender",bounce.sender),""),
                 ifelse(!is.null(explanation),paste("--explanation",explanation),""),
                 ifelse(!is.null(message.dsn),paste("--message-dsn",message.dsn),""),
                 ifelse(!is.null(bounced.recipient.info.list),paste("--bounced-recipient-info-list",bounced.recipient.info.list),""),
                 ifelse(!is.null(bounce.sender.arn),paste("--bounce-sender-arn",bounce.sender.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.send.email <- function (destination=NULL,message=NULL,reply.to.addresses=NULL,return.path=NULL,source.arn=NULL,return.path.arn=NULL,from=NULL,to=NULL,cc=NULL,bcc=NULL,subject=NULL,text=NULL,html=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses send-email",
                 ifelse(!is.null(destination),paste("--destination",destination),""),
                 ifelse(!is.null(message),paste("--message",message),""),
                 ifelse(!is.null(reply.to.addresses),paste("--reply-to-addresses",reply.to.addresses),""),
                 ifelse(!is.null(return.path),paste("--return-path",return.path),""),
                 ifelse(!is.null(source.arn),paste("--source-arn",source.arn),""),
                 ifelse(!is.null(return.path.arn),paste("--return-path-arn",return.path.arn),""),
                 ifelse(!is.null(from),paste("--from",from),""),
                 ifelse(!is.null(to),paste("--to",to),""),
                 ifelse(!is.null(cc),paste("--cc",cc),""),
                 ifelse(!is.null(bcc),paste("--bcc",bcc),""),
                 ifelse(!is.null(subject),paste("--subject",subject),""),
                 ifelse(!is.null(text),paste("--text",text),""),
                 ifelse(!is.null(html),paste("--html",html),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.send.raw.email <- function (source=NULL,destinations=NULL,raw.message=NULL,from.arn=NULL,source.arn=NULL,return.path.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses send-raw-email",
                 ifelse(!is.null(source),paste("--source",source),""),
                 ifelse(!is.null(destinations),paste("--destinations",destinations),""),
                 ifelse(!is.null(raw.message),paste("--raw-message",raw.message),""),
                 ifelse(!is.null(from.arn),paste("--from-arn",from.arn),""),
                 ifelse(!is.null(source.arn),paste("--source-arn",source.arn),""),
                 ifelse(!is.null(return.path.arn),paste("--return-path-arn",return.path.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.set.active.receipt.rule.set <- function (rule.set.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses set-active-receipt-rule-set",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.set.identity.dkim.enabled <- function (identity=NULL,dkim.enabled=FALSE,no.dkim.enabled=FALSE,cli.input.json=NULL) {
    if(dkim.enabled && no.dkim.enabled) stop("please set either dkim.enabled or no.dkim.enabled")
    cmd <- paste("aws ses set-identity-dkim-enabled",
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(dkim.enabled,"--dkim-enabled",""),
                 ifelse(no.dkim.enabled,"--no-dkim-enabled",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.set.identity.feedback.forwarding.enabled <- function (identity=NULL,forwarding.enabled=FALSE,no.forwarding.enabled=FALSE,cli.input.json=NULL) {
    if(forwarding.enabled && no.forwarding.enabled) stop("please set either forwarding.enabled or no.forwarding.enabled")
    cmd <- paste("aws ses set-identity-feedback-forwarding-enabled",
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(forwarding.enabled,"--forwarding-enabled",""),
                 ifelse(no.forwarding.enabled,"--no-forwarding-enabled",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.set.identity.notification.topic <- function (identity=NULL,notification.type=NULL,sns.topic=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses set-identity-notification-topic",
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(!is.null(notification.type),paste("--notification-type",notification.type),""),
                 ifelse(!is.null(sns.topic),paste("--sns-topic",sns.topic),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.set.receipt.rule.position <- function (rule.set.name=NULL,rule.name=NULL,after=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses set-receipt-rule-position",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(rule.name),paste("--rule-name",rule.name),""),
                 ifelse(!is.null(after),paste("--after",after),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.update.receipt.rule <- function (rule.set.name=NULL,rule=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses update-receipt-rule",
                 ifelse(!is.null(rule.set.name),paste("--rule-set-name",rule.set.name),""),
                 ifelse(!is.null(rule),paste("--rule",rule),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.verify.domain.dkim <- function (domain=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses verify-domain-dkim",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.verify.domain.identity <- function (domain=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses verify-domain-identity",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ses.verify.email.identity <- function (email.address=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ses verify-email-identity",
                 ifelse(!is.null(email.address),paste("--email-address",email.address),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
