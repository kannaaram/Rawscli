swf.count.closed.workflow.executions <- function (domain=NULL,start.time.filter=NULL,close.time.filter=NULL,execution.filter=NULL,type.filter=NULL,tag.filter=NULL,close.status.filter=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf count-closed-workflow-executions",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(start.time.filter),paste("--start-time-filter",start.time.filter),""),
                 ifelse(!is.null(close.time.filter),paste("--close-time-filter",close.time.filter),""),
                 ifelse(!is.null(execution.filter),paste("--execution-filter",execution.filter),""),
                 ifelse(!is.null(type.filter),paste("--type-filter",type.filter),""),
                 ifelse(!is.null(tag.filter),paste("--tag-filter",tag.filter),""),
                 ifelse(!is.null(close.status.filter),paste("--close-status-filter",close.status.filter),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.count.open.workflow.executions <- function (domain=NULL,start.time.filter=NULL,type.filter=NULL,tag.filter=NULL,execution.filter=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf count-open-workflow-executions",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(start.time.filter),paste("--start-time-filter",start.time.filter),""),
                 ifelse(!is.null(type.filter),paste("--type-filter",type.filter),""),
                 ifelse(!is.null(tag.filter),paste("--tag-filter",tag.filter),""),
                 ifelse(!is.null(execution.filter),paste("--execution-filter",execution.filter),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.count.pending.activity.tasks <- function (domain=NULL,task.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf count-pending-activity-tasks",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(task.list),paste("--task-list",task.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.count.pending.decision.tasks <- function (domain=NULL,task.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf count-pending-decision-tasks",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(task.list),paste("--task-list",task.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.deprecate.activity.type <- function (domain=NULL,activity.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf deprecate-activity-type",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(activity.type),paste("--activity-type",activity.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.deprecate.domain <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf deprecate-domain",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.deprecate.workflow.type <- function (domain=NULL,workflow.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf deprecate-workflow-type",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(workflow.type),paste("--workflow-type",workflow.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.describe.activity.type <- function (domain=NULL,activity.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf describe-activity-type",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(activity.type),paste("--activity-type",activity.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.describe.domain <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf describe-domain",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.describe.workflow.execution <- function (domain=NULL,execution=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf describe-workflow-execution",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(execution),paste("--execution",execution),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.describe.workflow.type <- function (domain=NULL,workflow.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf describe-workflow-type",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(workflow.type),paste("--workflow-type",workflow.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.get.workflow.execution.history <- function (domain=NULL,execution=NULL,reverse.order=FALSE,no.reverse.order=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(reverse.order && no.reverse.order) stop("please set either reverse.order or no.reverse.order")
    cmd <- paste("aws swf get-workflow-execution-history",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(execution),paste("--execution",execution),""),
                 ifelse(reverse.order,"--reverse-order",""),
                 ifelse(no.reverse.order,"--no-reverse-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
swf.list.activity.types <- function (domain=NULL,name=NULL,registration.status=NULL,reverse.order=FALSE,no.reverse.order=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(reverse.order && no.reverse.order) stop("please set either reverse.order or no.reverse.order")
    cmd <- paste("aws swf list-activity-types",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(registration.status),paste("--registration-status",registration.status),""),
                 ifelse(reverse.order,"--reverse-order",""),
                 ifelse(no.reverse.order,"--no-reverse-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
swf.list.closed.workflow.executions <- function (domain=NULL,start.time.filter=NULL,close.time.filter=NULL,execution.filter=NULL,close.status.filter=NULL,type.filter=NULL,tag.filter=NULL,reverse.order=FALSE,no.reverse.order=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(reverse.order && no.reverse.order) stop("please set either reverse.order or no.reverse.order")
    cmd <- paste("aws swf list-closed-workflow-executions",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(start.time.filter),paste("--start-time-filter",start.time.filter),""),
                 ifelse(!is.null(close.time.filter),paste("--close-time-filter",close.time.filter),""),
                 ifelse(!is.null(execution.filter),paste("--execution-filter",execution.filter),""),
                 ifelse(!is.null(close.status.filter),paste("--close-status-filter",close.status.filter),""),
                 ifelse(!is.null(type.filter),paste("--type-filter",type.filter),""),
                 ifelse(!is.null(tag.filter),paste("--tag-filter",tag.filter),""),
                 ifelse(reverse.order,"--reverse-order",""),
                 ifelse(no.reverse.order,"--no-reverse-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
swf.list.domains <- function (registration.status=NULL,reverse.order=FALSE,no.reverse.order=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(reverse.order && no.reverse.order) stop("please set either reverse.order or no.reverse.order")
    cmd <- paste("aws swf list-domains",
                 ifelse(!is.null(registration.status),paste("--registration-status",registration.status),""),
                 ifelse(reverse.order,"--reverse-order",""),
                 ifelse(no.reverse.order,"--no-reverse-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
swf.list.open.workflow.executions <- function (domain=NULL,start.time.filter=NULL,type.filter=NULL,tag.filter=NULL,reverse.order=FALSE,no.reverse.order=FALSE,execution.filter=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(reverse.order && no.reverse.order) stop("please set either reverse.order or no.reverse.order")
    cmd <- paste("aws swf list-open-workflow-executions",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(start.time.filter),paste("--start-time-filter",start.time.filter),""),
                 ifelse(!is.null(type.filter),paste("--type-filter",type.filter),""),
                 ifelse(!is.null(tag.filter),paste("--tag-filter",tag.filter),""),
                 ifelse(reverse.order,"--reverse-order",""),
                 ifelse(no.reverse.order,"--no-reverse-order",""),
                 ifelse(!is.null(execution.filter),paste("--execution-filter",execution.filter),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
swf.list.workflow.types <- function (domain=NULL,name=NULL,registration.status=NULL,reverse.order=FALSE,no.reverse.order=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(reverse.order && no.reverse.order) stop("please set either reverse.order or no.reverse.order")
    cmd <- paste("aws swf list-workflow-types",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(registration.status),paste("--registration-status",registration.status),""),
                 ifelse(reverse.order,"--reverse-order",""),
                 ifelse(no.reverse.order,"--no-reverse-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
swf.poll.for.activity.task <- function (domain=NULL,task.list=NULL,identity=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf poll-for-activity-task",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(task.list),paste("--task-list",task.list),""),
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.poll.for.decision.task <- function (domain=NULL,task.list=NULL,identity=NULL,reverse.order=FALSE,no.reverse.order=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(reverse.order && no.reverse.order) stop("please set either reverse.order or no.reverse.order")
    cmd <- paste("aws swf poll-for-decision-task",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(task.list),paste("--task-list",task.list),""),
                 ifelse(!is.null(identity),paste("--identity",identity),""),
                 ifelse(reverse.order,"--reverse-order",""),
                 ifelse(no.reverse.order,"--no-reverse-order",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
swf.record.activity.task.heartbeat <- function (task.token=NULL,details=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf record-activity-task-heartbeat",
                 ifelse(!is.null(task.token),paste("--task-token",task.token),""),
                 ifelse(!is.null(details),paste("--details",details),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.register.activity.type <- function (domain=NULL,name=NULL,description=NULL,default.task.start.to.close.timeout=NULL,default.task.heartbeat.timeout=NULL,default.task.list=NULL,default.task.priority=NULL,default.task.schedule.to.start.timeout=NULL,default.task.schedule.to.close.timeout=NULL,activity.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf register-activity-type",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(default.task.start.to.close.timeout),paste("--default-task-start-to-close-timeout",default.task.start.to.close.timeout),""),
                 ifelse(!is.null(default.task.heartbeat.timeout),paste("--default-task-heartbeat-timeout",default.task.heartbeat.timeout),""),
                 ifelse(!is.null(default.task.list),paste("--default-task-list",default.task.list),""),
                 ifelse(!is.null(default.task.priority),paste("--default-task-priority",default.task.priority),""),
                 ifelse(!is.null(default.task.schedule.to.start.timeout),paste("--default-task-schedule-to-start-timeout",default.task.schedule.to.start.timeout),""),
                 ifelse(!is.null(default.task.schedule.to.close.timeout),paste("--default-task-schedule-to-close-timeout",default.task.schedule.to.close.timeout),""),
                 ifelse(!is.null(activity.version),paste("--activity-version",activity.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.register.domain <- function (name=NULL,description=NULL,workflow.execution.retention.period.in.days=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf register-domain",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(workflow.execution.retention.period.in.days),paste("--workflow-execution-retention-period-in-days",workflow.execution.retention.period.in.days),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.register.workflow.type <- function (domain=NULL,name=NULL,description=NULL,default.task.start.to.close.timeout=NULL,default.execution.start.to.close.timeout=NULL,default.task.list=NULL,default.task.priority=NULL,default.child.policy=NULL,default.lambda.role=NULL,workflow.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf register-workflow-type",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(default.task.start.to.close.timeout),paste("--default-task-start-to-close-timeout",default.task.start.to.close.timeout),""),
                 ifelse(!is.null(default.execution.start.to.close.timeout),paste("--default-execution-start-to-close-timeout",default.execution.start.to.close.timeout),""),
                 ifelse(!is.null(default.task.list),paste("--default-task-list",default.task.list),""),
                 ifelse(!is.null(default.task.priority),paste("--default-task-priority",default.task.priority),""),
                 ifelse(!is.null(default.child.policy),paste("--default-child-policy",default.child.policy),""),
                 ifelse(!is.null(default.lambda.role),paste("--default-lambda-role",default.lambda.role),""),
                 ifelse(!is.null(workflow.version),paste("--workflow-version",workflow.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.request.cancel.workflow.execution <- function (domain=NULL,workflow.id=NULL,run.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf request-cancel-workflow-execution",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(workflow.id),paste("--workflow-id",workflow.id),""),
                 ifelse(!is.null(run.id),paste("--run-id",run.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.respond.activity.task.canceled <- function (task.token=NULL,details=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf respond-activity-task-canceled",
                 ifelse(!is.null(task.token),paste("--task-token",task.token),""),
                 ifelse(!is.null(details),paste("--details",details),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.respond.activity.task.completed <- function (task.token=NULL,result=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf respond-activity-task-completed",
                 ifelse(!is.null(task.token),paste("--task-token",task.token),""),
                 ifelse(!is.null(result),paste("--result",result),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.respond.activity.task.failed <- function (task.token=NULL,reason=NULL,details=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf respond-activity-task-failed",
                 ifelse(!is.null(task.token),paste("--task-token",task.token),""),
                 ifelse(!is.null(reason),paste("--reason",reason),""),
                 ifelse(!is.null(details),paste("--details",details),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.respond.decision.task.completed <- function (task.token=NULL,decisions=NULL,execution.context=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf respond-decision-task-completed",
                 ifelse(!is.null(task.token),paste("--task-token",task.token),""),
                 ifelse(!is.null(decisions),paste("--decisions",decisions),""),
                 ifelse(!is.null(execution.context),paste("--execution-context",execution.context),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.signal.workflow.execution <- function (domain=NULL,workflow.id=NULL,run.id=NULL,signal.name=NULL,input=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf signal-workflow-execution",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(workflow.id),paste("--workflow-id",workflow.id),""),
                 ifelse(!is.null(run.id),paste("--run-id",run.id),""),
                 ifelse(!is.null(signal.name),paste("--signal-name",signal.name),""),
                 ifelse(!is.null(input),paste("--input",input),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.start.workflow.execution <- function (domain=NULL,workflow.id=NULL,workflow.type=NULL,task.list=NULL,task.priority=NULL,input=NULL,execution.start.to.close.timeout=NULL,tag.list=NULL,task.start.to.close.timeout=NULL,child.policy=NULL,lambda.role=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf start-workflow-execution",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(workflow.id),paste("--workflow-id",workflow.id),""),
                 ifelse(!is.null(workflow.type),paste("--workflow-type",workflow.type),""),
                 ifelse(!is.null(task.list),paste("--task-list",task.list),""),
                 ifelse(!is.null(task.priority),paste("--task-priority",task.priority),""),
                 ifelse(!is.null(input),paste("--input",input),""),
                 ifelse(!is.null(execution.start.to.close.timeout),paste("--execution-start-to-close-timeout",execution.start.to.close.timeout),""),
                 ifelse(!is.null(tag.list),paste("--tag-list",tag.list),""),
                 ifelse(!is.null(task.start.to.close.timeout),paste("--task-start-to-close-timeout",task.start.to.close.timeout),""),
                 ifelse(!is.null(child.policy),paste("--child-policy",child.policy),""),
                 ifelse(!is.null(lambda.role),paste("--lambda-role",lambda.role),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
swf.terminate.workflow.execution <- function (domain=NULL,workflow.id=NULL,run.id=NULL,reason=NULL,details=NULL,child.policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws swf terminate-workflow-execution",
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(workflow.id),paste("--workflow-id",workflow.id),""),
                 ifelse(!is.null(run.id),paste("--run-id",run.id),""),
                 ifelse(!is.null(reason),paste("--reason",reason),""),
                 ifelse(!is.null(details),paste("--details",details),""),
                 ifelse(!is.null(child.policy),paste("--child-policy",child.policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
