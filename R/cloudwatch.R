cloudwatch.delete.alarms <- function (alarm.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudwatch delete-alarms",
                 ifelse(!is.null(alarm.names),paste("--alarm-names",alarm.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.describe.alarm.history <- function (alarm.name=NULL,history.item.type=NULL,start.date=NULL,end.date=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws cloudwatch describe-alarm-history",
                 ifelse(!is.null(alarm.name),paste("--alarm-name",alarm.name),""),
                 ifelse(!is.null(history.item.type),paste("--history-item-type",history.item.type),""),
                 ifelse(!is.null(start.date),paste("--start-date",start.date),""),
                 ifelse(!is.null(end.date),paste("--end-date",end.date),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.describe.alarms <- function (alarm.names=NULL,alarm.name.prefix=NULL,state.value=NULL,action.prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws cloudwatch describe-alarms",
                 ifelse(!is.null(alarm.names),paste("--alarm-names",alarm.names),""),
                 ifelse(!is.null(alarm.name.prefix),paste("--alarm-name-prefix",alarm.name.prefix),""),
                 ifelse(!is.null(state.value),paste("--state-value",state.value),""),
                 ifelse(!is.null(action.prefix),paste("--action-prefix",action.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.describe.alarms.for.metric <- function (metric.name=NULL,namespace=NULL,statistic=NULL,dimensions=NULL,period=NULL,unit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudwatch describe-alarms-for-metric",
                 ifelse(!is.null(metric.name),paste("--metric-name",metric.name),""),
                 ifelse(!is.null(namespace),paste("--namespace",namespace),""),
                 ifelse(!is.null(statistic),paste("--statistic",statistic),""),
                 ifelse(!is.null(dimensions),paste("--dimensions",dimensions),""),
                 ifelse(!is.null(period),paste("--period",period),""),
                 ifelse(!is.null(unit),paste("--unit",unit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.disable.alarm.actions <- function (alarm.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudwatch disable-alarm-actions",
                 ifelse(!is.null(alarm.names),paste("--alarm-names",alarm.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.enable.alarm.actions <- function (alarm.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudwatch enable-alarm-actions",
                 ifelse(!is.null(alarm.names),paste("--alarm-names",alarm.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.get.metric.statistics <- function (namespace=NULL,metric.name=NULL,dimensions=NULL,start.time=NULL,end.time=NULL,period=NULL,statistics=NULL,unit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudwatch get-metric-statistics",
                 ifelse(!is.null(namespace),paste("--namespace",namespace),""),
                 ifelse(!is.null(metric.name),paste("--metric-name",metric.name),""),
                 ifelse(!is.null(dimensions),paste("--dimensions",dimensions),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(period),paste("--period",period),""),
                 ifelse(!is.null(statistics),paste("--statistics",statistics),""),
                 ifelse(!is.null(unit),paste("--unit",unit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.list.metrics <- function (namespace=NULL,metric.name=NULL,dimensions=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws cloudwatch list-metrics",
                 ifelse(!is.null(namespace),paste("--namespace",namespace),""),
                 ifelse(!is.null(metric.name),paste("--metric-name",metric.name),""),
                 ifelse(!is.null(dimensions),paste("--dimensions",dimensions),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.put.metric.alarm <- function (alarm.name=NULL,alarm.description=NULL,actions.enabled=FALSE,no.actions.enabled=FALSE,ok.actions=NULL,alarm.actions=NULL,insufficient.data.actions=NULL,metric.name=NULL,namespace=NULL,statistic=NULL,dimensions=NULL,period=NULL,unit=NULL,evaluation.periods=NULL,threshold=NULL,comparison.operator=NULL,cli.input.json=NULL) {
    if(actions.enabled && no.actions.enabled) stop("please set either actions.enabled or no.actions.enabled")
    cmd <- paste("aws cloudwatch put-metric-alarm",
                 ifelse(!is.null(alarm.name),paste("--alarm-name",alarm.name),""),
                 ifelse(!is.null(alarm.description),paste("--alarm-description",alarm.description),""),
                 ifelse(actions.enabled,"--actions-enabled",""),
                 ifelse(no.actions.enabled,"--no-actions-enabled",""),
                 ifelse(!is.null(ok.actions),paste("--ok-actions",ok.actions),""),
                 ifelse(!is.null(alarm.actions),paste("--alarm-actions",alarm.actions),""),
                 ifelse(!is.null(insufficient.data.actions),paste("--insufficient-data-actions",insufficient.data.actions),""),
                 ifelse(!is.null(metric.name),paste("--metric-name",metric.name),""),
                 ifelse(!is.null(namespace),paste("--namespace",namespace),""),
                 ifelse(!is.null(statistic),paste("--statistic",statistic),""),
                 ifelse(!is.null(dimensions),paste("--dimensions",dimensions),""),
                 ifelse(!is.null(period),paste("--period",period),""),
                 ifelse(!is.null(unit),paste("--unit",unit),""),
                 ifelse(!is.null(evaluation.periods),paste("--evaluation-periods",evaluation.periods),""),
                 ifelse(!is.null(threshold),paste("--threshold",threshold),""),
                 ifelse(!is.null(comparison.operator),paste("--comparison-operator",comparison.operator),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.put.metric.data <- function (namespace=NULL,metric.data=NULL,metric.name=NULL,timestamp=NULL,unit=NULL,value=NULL,dimensions=NULL,statistic.values=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudwatch put-metric-data",
                 ifelse(!is.null(namespace),paste("--namespace",namespace),""),
                 ifelse(!is.null(metric.data),paste("--metric-data",metric.data),""),
                 ifelse(!is.null(metric.name),paste("--metric-name",metric.name),""),
                 ifelse(!is.null(timestamp),paste("--timestamp",timestamp),""),
                 ifelse(!is.null(unit),paste("--unit",unit),""),
                 ifelse(!is.null(value),paste("--value",value),""),
                 ifelse(!is.null(dimensions),paste("--dimensions",dimensions),""),
                 ifelse(!is.null(statistic.values),paste("--statistic-values",statistic.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudwatch.set.alarm.state <- function (alarm.name=NULL,state.value=NULL,state.reason=NULL,state.reason.data=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudwatch set-alarm-state",
                 ifelse(!is.null(alarm.name),paste("--alarm-name",alarm.name),""),
                 ifelse(!is.null(state.value),paste("--state-value",state.value),""),
                 ifelse(!is.null(state.reason),paste("--state-reason",state.reason),""),
                 ifelse(!is.null(state.reason.data),paste("--state-reason-data",state.reason.data),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
