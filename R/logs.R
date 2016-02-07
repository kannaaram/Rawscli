logs.cancel.export.task <- function (task.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs cancel-export-task",
                 ifelse(!is.null(task.id),paste("--task-id",task.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.create.export.task <- function (task.name=NULL,log.group.name=NULL,log.stream.name.prefix=NULL,from=NULL,to=NULL,destination=NULL,destination.prefix=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs create-export-task",
                 ifelse(!is.null(task.name),paste("--task-name",task.name),""),
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(log.stream.name.prefix),paste("--log-stream-name-prefix",log.stream.name.prefix),""),
                 ifelse(!is.null(from),paste("--from",from),""),
                 ifelse(!is.null(to),paste("--to",to),""),
                 ifelse(!is.null(destination),paste("--destination",destination),""),
                 ifelse(!is.null(destination.prefix),paste("--destination-prefix",destination.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.create.log.group <- function (log.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs create-log-group",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.create.log.stream <- function (log.group.name=NULL,log.stream.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs create-log-stream",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(log.stream.name),paste("--log-stream-name",log.stream.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.delete.destination <- function (destination.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs delete-destination",
                 ifelse(!is.null(destination.name),paste("--destination-name",destination.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.delete.log.group <- function (log.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs delete-log-group",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.delete.log.stream <- function (log.group.name=NULL,log.stream.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs delete-log-stream",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(log.stream.name),paste("--log-stream-name",log.stream.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.delete.metric.filter <- function (log.group.name=NULL,filter.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs delete-metric-filter",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(filter.name),paste("--filter-name",filter.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.delete.retention.policy <- function (log.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs delete-retention-policy",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.delete.subscription.filter <- function (log.group.name=NULL,filter.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs delete-subscription-filter",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(filter.name),paste("--filter-name",filter.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.describe.destinations <- function (destination.name.prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws logs describe-destinations",
                 ifelse(!is.null(destination.name.prefix),paste("--destination-name-prefix",destination.name.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
logs.describe.export.tasks <- function (task.id=NULL,status.code=NULL,next.token=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs describe-export-tasks",
                 ifelse(!is.null(task.id),paste("--task-id",task.id),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.describe.log.groups <- function (log.group.name.prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws logs describe-log-groups",
                 ifelse(!is.null(log.group.name.prefix),paste("--log-group-name-prefix",log.group.name.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
logs.describe.log.streams <- function (log.group.name=NULL,log.stream.name.prefix=NULL,order.by=NULL,descending=FALSE,no.descending=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(descending && no.descending) stop("please set either descending or no.descending")
    cmd <- paste("aws logs describe-log-streams",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(log.stream.name.prefix),paste("--log-stream-name-prefix",log.stream.name.prefix),""),
                 ifelse(!is.null(order.by),paste("--order-by",order.by),""),
                 ifelse(descending,"--descending",""),
                 ifelse(no.descending,"--no-descending",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
logs.describe.metric.filters <- function (log.group.name=NULL,filter.name.prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws logs describe-metric-filters",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(filter.name.prefix),paste("--filter-name-prefix",filter.name.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
logs.describe.subscription.filters <- function (log.group.name=NULL,filter.name.prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws logs describe-subscription-filters",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(filter.name.prefix),paste("--filter-name-prefix",filter.name.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
logs.filter.log.events <- function (log.group.name=NULL,log.stream.names=NULL,start.time=NULL,end.time=NULL,filter.pattern=NULL,interleaved=FALSE,no.interleaved=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(interleaved && no.interleaved) stop("please set either interleaved or no.interleaved")
    cmd <- paste("aws logs filter-log-events",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(log.stream.names),paste("--log-stream-names",log.stream.names),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(filter.pattern),paste("--filter-pattern",filter.pattern),""),
                 ifelse(interleaved,"--interleaved",""),
                 ifelse(no.interleaved,"--no-interleaved",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
logs.get.log.events <- function (log.group.name=NULL,log.stream.name=NULL,start.time=NULL,end.time=NULL,next.token=NULL,limit=NULL,start.from.head=FALSE,no.start.from.head=FALSE,cli.input.json=NULL) {
    if(start.from.head && no.start.from.head) stop("please set either start.from.head or no.start.from.head")
    cmd <- paste("aws logs get-log-events",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(log.stream.name),paste("--log-stream-name",log.stream.name),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(start.from.head,"--start-from-head",""),
                 ifelse(no.start.from.head,"--no-start-from-head",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.put.destination <- function (destination.name=NULL,target.arn=NULL,role.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs put-destination",
                 ifelse(!is.null(destination.name),paste("--destination-name",destination.name),""),
                 ifelse(!is.null(target.arn),paste("--target-arn",target.arn),""),
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.put.destination.policy <- function (destination.name=NULL,access.policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs put-destination-policy",
                 ifelse(!is.null(destination.name),paste("--destination-name",destination.name),""),
                 ifelse(!is.null(access.policy),paste("--access-policy",access.policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.put.log.events <- function (log.group.name=NULL,log.stream.name=NULL,log.events=NULL,sequence.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs put-log-events",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(log.stream.name),paste("--log-stream-name",log.stream.name),""),
                 ifelse(!is.null(log.events),paste("--log-events",log.events),""),
                 ifelse(!is.null(sequence.token),paste("--sequence-token",sequence.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.put.metric.filter <- function (log.group.name=NULL,filter.name=NULL,filter.pattern=NULL,metric.transformations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs put-metric-filter",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(filter.name),paste("--filter-name",filter.name),""),
                 ifelse(!is.null(filter.pattern),paste("--filter-pattern",filter.pattern),""),
                 ifelse(!is.null(metric.transformations),paste("--metric-transformations",metric.transformations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.put.retention.policy <- function (log.group.name=NULL,retention.in.days=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs put-retention-policy",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(retention.in.days),paste("--retention-in-days",retention.in.days),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.put.subscription.filter <- function (log.group.name=NULL,filter.name=NULL,filter.pattern=NULL,destination.arn=NULL,role.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs put-subscription-filter",
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(filter.name),paste("--filter-name",filter.name),""),
                 ifelse(!is.null(filter.pattern),paste("--filter-pattern",filter.pattern),""),
                 ifelse(!is.null(destination.arn),paste("--destination-arn",destination.arn),""),
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
logs.test.metric.filter <- function (filter.pattern=NULL,log.event.messages=NULL,cli.input.json=NULL) {
    cmd <- paste("aws logs test-metric-filter",
                 ifelse(!is.null(filter.pattern),paste("--filter-pattern",filter.pattern),""),
                 ifelse(!is.null(log.event.messages),paste("--log-event-messages",log.event.messages),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
