support.add.attachments.to.set <- function (attachment.set.id=NULL,attachments=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support add-attachments-to-set",
                 ifelse(!is.null(attachment.set.id),paste("--attachment-set-id",attachment.set.id),""),
                 ifelse(!is.null(attachments),paste("--attachments",attachments),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.add.communication.to.case <- function (case.id=NULL,communication.body=NULL,cc.email.addresses=NULL,attachment.set.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support add-communication-to-case",
                 ifelse(!is.null(case.id),paste("--case-id",case.id),""),
                 ifelse(!is.null(communication.body),paste("--communication-body",communication.body),""),
                 ifelse(!is.null(cc.email.addresses),paste("--cc-email-addresses",cc.email.addresses),""),
                 ifelse(!is.null(attachment.set.id),paste("--attachment-set-id",attachment.set.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.create.case <- function (subject=NULL,service.code=NULL,severity.code=NULL,category.code=NULL,communication.body=NULL,cc.email.addresses=NULL,language=NULL,issue.type=NULL,attachment.set.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support create-case",
                 ifelse(!is.null(subject),paste("--subject",subject),""),
                 ifelse(!is.null(service.code),paste("--service-code",service.code),""),
                 ifelse(!is.null(severity.code),paste("--severity-code",severity.code),""),
                 ifelse(!is.null(category.code),paste("--category-code",category.code),""),
                 ifelse(!is.null(communication.body),paste("--communication-body",communication.body),""),
                 ifelse(!is.null(cc.email.addresses),paste("--cc-email-addresses",cc.email.addresses),""),
                 ifelse(!is.null(language),paste("--language",language),""),
                 ifelse(!is.null(issue.type),paste("--issue-type",issue.type),""),
                 ifelse(!is.null(attachment.set.id),paste("--attachment-set-id",attachment.set.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.describe.attachment <- function (attachment.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support describe-attachment",
                 ifelse(!is.null(attachment.id),paste("--attachment-id",attachment.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.describe.cases <- function (case.id.list=NULL,display.id=NULL,after.time=NULL,before.time=NULL,include.resolved.cases=FALSE,no.include.resolved.cases=FALSE,language=NULL,include.communications=FALSE,no.include.communications=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(include.resolved.cases && no.include.resolved.cases) stop("please set either include.resolved.cases or no.include.resolved.cases")
    if(include.communications && no.include.communications) stop("please set either include.communications or no.include.communications")
    cmd <- paste("aws support describe-cases",
                 ifelse(!is.null(case.id.list),paste("--case-id-list",case.id.list),""),
                 ifelse(!is.null(display.id),paste("--display-id",display.id),""),
                 ifelse(!is.null(after.time),paste("--after-time",after.time),""),
                 ifelse(!is.null(before.time),paste("--before-time",before.time),""),
                 ifelse(include.resolved.cases,"--include-resolved-cases",""),
                 ifelse(no.include.resolved.cases,"--no-include-resolved-cases",""),
                 ifelse(!is.null(language),paste("--language",language),""),
                 ifelse(include.communications,"--include-communications",""),
                 ifelse(no.include.communications,"--no-include-communications",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
support.describe.communications <- function (case.id=NULL,before.time=NULL,after.time=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws support describe-communications",
                 ifelse(!is.null(case.id),paste("--case-id",case.id),""),
                 ifelse(!is.null(before.time),paste("--before-time",before.time),""),
                 ifelse(!is.null(after.time),paste("--after-time",after.time),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
support.describe.services <- function (service.code.list=NULL,language=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support describe-services",
                 ifelse(!is.null(service.code.list),paste("--service-code-list",service.code.list),""),
                 ifelse(!is.null(language),paste("--language",language),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.describe.severity.levels <- function (language=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support describe-severity-levels",
                 ifelse(!is.null(language),paste("--language",language),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.describe.trusted.advisor.check.refresh.statuses <- function (check.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support describe-trusted-advisor-check-refresh-statuses",
                 ifelse(!is.null(check.ids),paste("--check-ids",check.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.describe.trusted.advisor.check.result <- function (check.id=NULL,language=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support describe-trusted-advisor-check-result",
                 ifelse(!is.null(check.id),paste("--check-id",check.id),""),
                 ifelse(!is.null(language),paste("--language",language),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.describe.trusted.advisor.check.summaries <- function (check.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support describe-trusted-advisor-check-summaries",
                 ifelse(!is.null(check.ids),paste("--check-ids",check.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.describe.trusted.advisor.checks <- function (language=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support describe-trusted-advisor-checks",
                 ifelse(!is.null(language),paste("--language",language),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.refresh.trusted.advisor.check <- function (check.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support refresh-trusted-advisor-check",
                 ifelse(!is.null(check.id),paste("--check-id",check.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
support.resolve.case <- function (case.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws support resolve-case",
                 ifelse(!is.null(case.id),paste("--case-id",case.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
