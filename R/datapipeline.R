datapipeline.activate.pipeline <- function (pipeline.id=NULL,parameter.values=NULL,start.timestamp=NULL,parameter.values.uri=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline activate-pipeline",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(parameter.values),paste("--parameter-values",parameter.values),""),
                 ifelse(!is.null(start.timestamp),paste("--start-timestamp",start.timestamp),""),
                 ifelse(!is.null(parameter.values.uri),paste("--parameter-values-uri",parameter.values.uri),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.add.tags <- function (pipeline.id=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline add-tags",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.create.pipeline <- function (name=NULL,unique.id=NULL,description=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline create-pipeline",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(unique.id),paste("--unique-id",unique.id),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.deactivate.pipeline <- function (pipeline.id=NULL,cancel.active=FALSE,no.cancel.active=FALSE,cli.input.json=NULL) {
    if(cancel.active && no.cancel.active) stop("please set either cancel.active or no.cancel.active")
    cmd <- paste("aws datapipeline deactivate-pipeline",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(cancel.active,"--cancel-active",""),
                 ifelse(no.cancel.active,"--no-cancel-active",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.delete.pipeline <- function (pipeline.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline delete-pipeline",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.describe.objects <- function (pipeline.id=NULL,object.ids=NULL,evaluate.expressions=FALSE,no.evaluate.expressions=FALSE,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    if(evaluate.expressions && no.evaluate.expressions) stop("please set either evaluate.expressions or no.evaluate.expressions")
    cmd <- paste("aws datapipeline describe-objects",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(object.ids),paste("--object-ids",object.ids),""),
                 ifelse(evaluate.expressions,"--evaluate-expressions",""),
                 ifelse(no.evaluate.expressions,"--no-evaluate-expressions",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
datapipeline.describe.pipelines <- function (pipeline.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline describe-pipelines",
                 ifelse(!is.null(pipeline.ids),paste("--pipeline-ids",pipeline.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.evaluate.expression <- function (pipeline.id=NULL,object.id=NULL,expression=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline evaluate-expression",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(object.id),paste("--object-id",object.id),""),
                 ifelse(!is.null(expression),paste("--expression",expression),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.get.pipeline.definition <- function (pipeline.id=NULL,pipeline.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline get-pipeline-definition",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(pipeline.version),paste("--pipeline-version",pipeline.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.list.pipelines <- function (cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws datapipeline list-pipelines",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
datapipeline.list.runs <- function (pipeline.id=NULL,status=NULL,start.interval=NULL,schedule.interval=NULL) {
    cmd <- paste("aws datapipeline list-runs",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(start.interval),paste("--start-interval",start.interval),""),
                 ifelse(!is.null(schedule.interval),paste("--schedule-interval",schedule.interval),""))
    system(cmd,intern=TRUE) 
}
datapipeline.poll.for.task <- function (worker.group=NULL,hostname=NULL,instance.identity=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline poll-for-task",
                 ifelse(!is.null(worker.group),paste("--worker-group",worker.group),""),
                 ifelse(!is.null(hostname),paste("--hostname",hostname),""),
                 ifelse(!is.null(instance.identity),paste("--instance-identity",instance.identity),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.put.pipeline.definition <- function (pipeline.id=NULL,parameter.objects=NULL,parameter.values=NULL,pipeline.definition=NULL,parameter.values.uri=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline put-pipeline-definition",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(parameter.objects),paste("--parameter-objects",parameter.objects),""),
                 ifelse(!is.null(parameter.values),paste("--parameter-values",parameter.values),""),
                 ifelse(!is.null(pipeline.definition),paste("--pipeline-definition",pipeline.definition),""),
                 ifelse(!is.null(parameter.values.uri),paste("--parameter-values-uri",parameter.values.uri),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.query.objects <- function (pipeline.id=NULL,sphere=NULL,objects.query=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws datapipeline query-objects",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(sphere),paste("--sphere",sphere),""),
                 ifelse(!is.null(objects.query),paste("--objects-query",objects.query),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
datapipeline.remove.tags <- function (pipeline.id=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline remove-tags",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.report.task.progress <- function (task.id=NULL,fields=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline report-task-progress",
                 ifelse(!is.null(task.id),paste("--task-id",task.id),""),
                 ifelse(!is.null(fields),paste("--fields",fields),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.report.task.runner.heartbeat <- function (taskrunner.id=NULL,worker.group=NULL,hostname=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline report-task-runner-heartbeat",
                 ifelse(!is.null(taskrunner.id),paste("--taskrunner-id",taskrunner.id),""),
                 ifelse(!is.null(worker.group),paste("--worker-group",worker.group),""),
                 ifelse(!is.null(hostname),paste("--hostname",hostname),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.set.status <- function (pipeline.id=NULL,object.ids=NULL,status=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline set-status",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(object.ids),paste("--object-ids",object.ids),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.set.task.status <- function (task.id=NULL,task.status=NULL,error.id=NULL,error.message=NULL,error.stack.trace=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline set-task-status",
                 ifelse(!is.null(task.id),paste("--task-id",task.id),""),
                 ifelse(!is.null(task.status),paste("--task-status",task.status),""),
                 ifelse(!is.null(error.id),paste("--error-id",error.id),""),
                 ifelse(!is.null(error.message),paste("--error-message",error.message),""),
                 ifelse(!is.null(error.stack.trace),paste("--error-stack-trace",error.stack.trace),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
datapipeline.validate.pipeline.definition <- function (pipeline.id=NULL,pipeline.objects=NULL,parameter.objects=NULL,parameter.values=NULL,cli.input.json=NULL) {
    cmd <- paste("aws datapipeline validate-pipeline-definition",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(pipeline.objects),paste("--pipeline-objects",pipeline.objects),""),
                 ifelse(!is.null(parameter.objects),paste("--parameter-objects",parameter.objects),""),
                 ifelse(!is.null(parameter.values),paste("--parameter-values",parameter.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
