cloudformation.cancel.update.stack <- function (stack.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation cancel-update-stack",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.create.stack <- function (stack.name=NULL,template.body=NULL,template.url=NULL,parameters=NULL,disable.rollback=FALSE,no.disable.rollback=FALSE,timeout.in.minutes=NULL,notification.arns=NULL,capabilities=NULL,resource.types=NULL,on.failure=NULL,stack.policy.body=NULL,stack.policy.url=NULL,tags=NULL,cli.input.json=NULL) {
    if(disable.rollback && no.disable.rollback) stop("please set either disable.rollback or no.disable.rollback")
    cmd <- paste("aws cloudformation create-stack",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(template.body),paste("--template-body",template.body),""),
                 ifelse(!is.null(template.url),paste("--template-url",template.url),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(disable.rollback,"--disable-rollback",""),
                 ifelse(no.disable.rollback,"--no-disable-rollback",""),
                 ifelse(!is.null(timeout.in.minutes),paste("--timeout-in-minutes",timeout.in.minutes),""),
                 ifelse(!is.null(notification.arns),paste("--notification-arns",notification.arns),""),
                 ifelse(!is.null(capabilities),paste("--capabilities",capabilities),""),
                 ifelse(!is.null(resource.types),paste("--resource-types",resource.types),""),
                 ifelse(!is.null(on.failure),paste("--on-failure",on.failure),""),
                 ifelse(!is.null(stack.policy.body),paste("--stack-policy-body",stack.policy.body),""),
                 ifelse(!is.null(stack.policy.url),paste("--stack-policy-url",stack.policy.url),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.delete.stack <- function (stack.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation delete-stack",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.describe.account.limits <- function (next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation describe-account-limits",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.describe.stack.events <- function (stack.name=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws cloudformation describe-stack-events",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
cloudformation.describe.stack.resource <- function (stack.name=NULL,logical.resource.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation describe-stack-resource",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(logical.resource.id),paste("--logical-resource-id",logical.resource.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.describe.stack.resources <- function (stack.name=NULL,logical.resource.id=NULL,physical.resource.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation describe-stack-resources",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(logical.resource.id),paste("--logical-resource-id",logical.resource.id),""),
                 ifelse(!is.null(physical.resource.id),paste("--physical-resource-id",physical.resource.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.describe.stacks <- function (stack.name=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws cloudformation describe-stacks",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
cloudformation.estimate.template.cost <- function (template.body=NULL,template.url=NULL,parameters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation estimate-template-cost",
                 ifelse(!is.null(template.body),paste("--template-body",template.body),""),
                 ifelse(!is.null(template.url),paste("--template-url",template.url),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.get.stack.policy <- function (stack.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation get-stack-policy",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.get.template <- function (stack.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation get-template",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.get.template.summary <- function (template.body=NULL,template.url=NULL,stack.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation get-template-summary",
                 ifelse(!is.null(template.body),paste("--template-body",template.body),""),
                 ifelse(!is.null(template.url),paste("--template-url",template.url),""),
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.list.stack.resources <- function (stack.name=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws cloudformation list-stack-resources",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
cloudformation.list.stacks <- function (stack.status.filter=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws cloudformation list-stacks",
                 ifelse(!is.null(stack.status.filter),paste("--stack-status-filter",stack.status.filter),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
cloudformation.set.stack.policy <- function (stack.name=NULL,stack.policy.body=NULL,stack.policy.url=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation set-stack-policy",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(stack.policy.body),paste("--stack-policy-body",stack.policy.body),""),
                 ifelse(!is.null(stack.policy.url),paste("--stack-policy-url",stack.policy.url),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.signal.resource <- function (stack.name=NULL,logical.resource.id=NULL,unique.id=NULL,status=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation signal-resource",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(logical.resource.id),paste("--logical-resource-id",logical.resource.id),""),
                 ifelse(!is.null(unique.id),paste("--unique-id",unique.id),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.update.stack <- function (stack.name=NULL,template.body=NULL,template.url=NULL,use.previous.template=FALSE,no.use.previous.template=FALSE,stack.policy.during.update.body=NULL,stack.policy.during.update.url=NULL,parameters=NULL,capabilities=NULL,resource.types=NULL,stack.policy.body=NULL,stack.policy.url=NULL,notification.arns=NULL,cli.input.json=NULL) {
    if(use.previous.template && no.use.previous.template) stop("please set either use.previous.template or no.use.previous.template")
    cmd <- paste("aws cloudformation update-stack",
                 ifelse(!is.null(stack.name),paste("--stack-name",stack.name),""),
                 ifelse(!is.null(template.body),paste("--template-body",template.body),""),
                 ifelse(!is.null(template.url),paste("--template-url",template.url),""),
                 ifelse(use.previous.template,"--use-previous-template",""),
                 ifelse(no.use.previous.template,"--no-use-previous-template",""),
                 ifelse(!is.null(stack.policy.during.update.body),paste("--stack-policy-during-update-body",stack.policy.during.update.body),""),
                 ifelse(!is.null(stack.policy.during.update.url),paste("--stack-policy-during-update-url",stack.policy.during.update.url),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(capabilities),paste("--capabilities",capabilities),""),
                 ifelse(!is.null(resource.types),paste("--resource-types",resource.types),""),
                 ifelse(!is.null(stack.policy.body),paste("--stack-policy-body",stack.policy.body),""),
                 ifelse(!is.null(stack.policy.url),paste("--stack-policy-url",stack.policy.url),""),
                 ifelse(!is.null(notification.arns),paste("--notification-arns",notification.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudformation.validate.template <- function (template.body=NULL,template.url=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudformation validate-template",
                 ifelse(!is.null(template.body),paste("--template-body",template.body),""),
                 ifelse(!is.null(template.url),paste("--template-url",template.url),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
