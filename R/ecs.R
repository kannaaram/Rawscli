ecs.create.cluster <- function (cluster.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs create-cluster",
                 ifelse(!is.null(cluster.name),paste("--cluster-name",cluster.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.create.service <- function (cluster=NULL,service.name=NULL,task.definition=NULL,load.balancers=NULL,desired.count=NULL,client.token=NULL,role=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs create-service",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(service.name),paste("--service-name",service.name),""),
                 ifelse(!is.null(task.definition),paste("--task-definition",task.definition),""),
                 ifelse(!is.null(load.balancers),paste("--load-balancers",load.balancers),""),
                 ifelse(!is.null(desired.count),paste("--desired-count",desired.count),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(role),paste("--role",role),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.delete.cluster <- function (cluster=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs delete-cluster",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.delete.service <- function (cluster=NULL,service=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs delete-service",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(service),paste("--service",service),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.deregister.container.instance <- function (cluster=NULL,container.instance=NULL,force=FALSE,no.force=FALSE,cli.input.json=NULL) {
    if(force && no.force) stop("please set either force or no.force")
    cmd <- paste("aws ecs deregister-container-instance",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(container.instance),paste("--container-instance",container.instance),""),
                 ifelse(force,"--force",""),
                 ifelse(no.force,"--no-force",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.deregister.task.definition <- function (task.definition=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs deregister-task-definition",
                 ifelse(!is.null(task.definition),paste("--task-definition",task.definition),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.describe.clusters <- function (clusters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs describe-clusters",
                 ifelse(!is.null(clusters),paste("--clusters",clusters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.describe.container.instances <- function (cluster=NULL,container.instances=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs describe-container-instances",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(container.instances),paste("--container-instances",container.instances),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.describe.services <- function (cluster=NULL,services=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs describe-services",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(services),paste("--services",services),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.describe.task.definition <- function (task.definition=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs describe-task-definition",
                 ifelse(!is.null(task.definition),paste("--task-definition",task.definition),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.describe.tasks <- function (cluster=NULL,tasks=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs describe-tasks",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(tasks),paste("--tasks",tasks),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.discover.poll.endpoint <- function (container.instance=NULL,cluster=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs discover-poll-endpoint",
                 ifelse(!is.null(container.instance),paste("--container-instance",container.instance),""),
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.list.clusters <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws ecs list-clusters",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ecs.list.container.instances <- function (cluster=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws ecs list-container-instances",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ecs.list.services <- function (cluster=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws ecs list-services",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ecs.list.task.definition.families <- function (family.prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws ecs list-task-definition-families",
                 ifelse(!is.null(family.prefix),paste("--family-prefix",family.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ecs.list.task.definitions <- function (family.prefix=NULL,status=NULL,sort=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws ecs list-task-definitions",
                 ifelse(!is.null(family.prefix),paste("--family-prefix",family.prefix),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(sort),paste("--sort",sort),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ecs.list.tasks <- function (cluster=NULL,container.instance=NULL,family=NULL,started.by=NULL,service.name=NULL,desired.status=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws ecs list-tasks",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(container.instance),paste("--container-instance",container.instance),""),
                 ifelse(!is.null(family),paste("--family",family),""),
                 ifelse(!is.null(started.by),paste("--started-by",started.by),""),
                 ifelse(!is.null(service.name),paste("--service-name",service.name),""),
                 ifelse(!is.null(desired.status),paste("--desired-status",desired.status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ecs.register.container.instance <- function (cluster=NULL,instance.identity.document=NULL,instance.identity.document.signature=NULL,total.resources=NULL,version.info=NULL,container.instance.arn=NULL,attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs register-container-instance",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(instance.identity.document),paste("--instance-identity-document",instance.identity.document),""),
                 ifelse(!is.null(instance.identity.document.signature),paste("--instance-identity-document-signature",instance.identity.document.signature),""),
                 ifelse(!is.null(total.resources),paste("--total-resources",total.resources),""),
                 ifelse(!is.null(version.info),paste("--version-info",version.info),""),
                 ifelse(!is.null(container.instance.arn),paste("--container-instance-arn",container.instance.arn),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.register.task.definition <- function (family=NULL,container.definitions=NULL,volumes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs register-task-definition",
                 ifelse(!is.null(family),paste("--family",family),""),
                 ifelse(!is.null(container.definitions),paste("--container-definitions",container.definitions),""),
                 ifelse(!is.null(volumes),paste("--volumes",volumes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.run.task <- function (cluster=NULL,task.definition=NULL,overrides=NULL,count=NULL,started.by=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs run-task",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(task.definition),paste("--task-definition",task.definition),""),
                 ifelse(!is.null(overrides),paste("--overrides",overrides),""),
                 ifelse(!is.null(count),paste("--count",count),""),
                 ifelse(!is.null(started.by),paste("--started-by",started.by),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.start.task <- function (cluster=NULL,task.definition=NULL,overrides=NULL,container.instances=NULL,started.by=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs start-task",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(task.definition),paste("--task-definition",task.definition),""),
                 ifelse(!is.null(overrides),paste("--overrides",overrides),""),
                 ifelse(!is.null(container.instances),paste("--container-instances",container.instances),""),
                 ifelse(!is.null(started.by),paste("--started-by",started.by),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.stop.task <- function (cluster=NULL,task=NULL,reason=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs stop-task",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(task),paste("--task",task),""),
                 ifelse(!is.null(reason),paste("--reason",reason),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.submit.container.state.change <- function (cluster=NULL,task=NULL,container.name=NULL,status=NULL,exit.code=NULL,reason=NULL,network.bindings=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs submit-container-state-change",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(task),paste("--task",task),""),
                 ifelse(!is.null(container.name),paste("--container-name",container.name),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(exit.code),paste("--exit-code",exit.code),""),
                 ifelse(!is.null(reason),paste("--reason",reason),""),
                 ifelse(!is.null(network.bindings),paste("--network-bindings",network.bindings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.submit.task.state.change <- function (cluster=NULL,task=NULL,status=NULL,reason=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs submit-task-state-change",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(task),paste("--task",task),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(reason),paste("--reason",reason),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.update.container.agent <- function (cluster=NULL,container.instance=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs update-container-agent",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(container.instance),paste("--container-instance",container.instance),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ecs.update.service <- function (cluster=NULL,service=NULL,desired.count=NULL,task.definition=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ecs update-service",
                 ifelse(!is.null(cluster),paste("--cluster",cluster),""),
                 ifelse(!is.null(service),paste("--service",service),""),
                 ifelse(!is.null(desired.count),paste("--desired-count",desired.count),""),
                 ifelse(!is.null(task.definition),paste("--task-definition",task.definition),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
