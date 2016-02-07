codepipeline.acknowledge.job <- function (job.id=NULL,nonce=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline acknowledge-job",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(nonce),paste("--nonce",nonce),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.acknowledge.third.party.job <- function (job.id=NULL,nonce=NULL,client.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline acknowledge-third-party-job",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(nonce),paste("--nonce",nonce),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.create.custom.action.type <- function (category=NULL,provider=NULL,settings=NULL,configuration.properties=NULL,input.artifact.details=NULL,output.artifact.details=NULL,action.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline create-custom-action-type",
                 ifelse(!is.null(category),paste("--category",category),""),
                 ifelse(!is.null(provider),paste("--provider",provider),""),
                 ifelse(!is.null(settings),paste("--settings",settings),""),
                 ifelse(!is.null(configuration.properties),paste("--configuration-properties",configuration.properties),""),
                 ifelse(!is.null(input.artifact.details),paste("--input-artifact-details",input.artifact.details),""),
                 ifelse(!is.null(output.artifact.details),paste("--output-artifact-details",output.artifact.details),""),
                 ifelse(!is.null(action.version),paste("--action-version",action.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.create.pipeline <- function (pipeline=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline create-pipeline",
                 ifelse(!is.null(pipeline),paste("--pipeline",pipeline),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.delete.custom.action.type <- function (category=NULL,provider=NULL,action.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline delete-custom-action-type",
                 ifelse(!is.null(category),paste("--category",category),""),
                 ifelse(!is.null(provider),paste("--provider",provider),""),
                 ifelse(!is.null(action.version),paste("--action-version",action.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.delete.pipeline <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline delete-pipeline",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.disable.stage.transition <- function (pipeline.name=NULL,stage.name=NULL,transition.type=NULL,reason=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline disable-stage-transition",
                 ifelse(!is.null(pipeline.name),paste("--pipeline-name",pipeline.name),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(transition.type),paste("--transition-type",transition.type),""),
                 ifelse(!is.null(reason),paste("--reason",reason),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.enable.stage.transition <- function (pipeline.name=NULL,stage.name=NULL,transition.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline enable-stage-transition",
                 ifelse(!is.null(pipeline.name),paste("--pipeline-name",pipeline.name),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(transition.type),paste("--transition-type",transition.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.get.job.details <- function (job.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline get-job-details",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.get.pipeline <- function (name=NULL,pipeline.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline get-pipeline",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(pipeline.version),paste("--pipeline-version",pipeline.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.get.pipeline.state <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline get-pipeline-state",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.get.third.party.job.details <- function (job.id=NULL,client.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline get-third-party-job-details",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.list.action.types <- function (action.owner.filter=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline list-action-types",
                 ifelse(!is.null(action.owner.filter),paste("--action-owner-filter",action.owner.filter),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.list.pipelines <- function (next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline list-pipelines",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.poll.for.jobs <- function (action.type.id=NULL,max.batch.size=NULL,query.param=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline poll-for-jobs",
                 ifelse(!is.null(action.type.id),paste("--action-type-id",action.type.id),""),
                 ifelse(!is.null(max.batch.size),paste("--max-batch-size",max.batch.size),""),
                 ifelse(!is.null(query.param),paste("--query-param",query.param),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.poll.for.third.party.jobs <- function (action.type.id=NULL,max.batch.size=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline poll-for-third-party-jobs",
                 ifelse(!is.null(action.type.id),paste("--action-type-id",action.type.id),""),
                 ifelse(!is.null(max.batch.size),paste("--max-batch-size",max.batch.size),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.put.action.revision <- function (pipeline.name=NULL,stage.name=NULL,action.name=NULL,action.revision=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline put-action-revision",
                 ifelse(!is.null(pipeline.name),paste("--pipeline-name",pipeline.name),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(action.name),paste("--action-name",action.name),""),
                 ifelse(!is.null(action.revision),paste("--action-revision",action.revision),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.put.job.failure.result <- function (job.id=NULL,failure.details=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline put-job-failure-result",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(failure.details),paste("--failure-details",failure.details),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.put.job.success.result <- function (job.id=NULL,current.revision=NULL,continuation.token=NULL,execution.details=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline put-job-success-result",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(current.revision),paste("--current-revision",current.revision),""),
                 ifelse(!is.null(continuation.token),paste("--continuation-token",continuation.token),""),
                 ifelse(!is.null(execution.details),paste("--execution-details",execution.details),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.put.third.party.job.failure.result <- function (job.id=NULL,client.token=NULL,failure.details=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline put-third-party-job-failure-result",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(failure.details),paste("--failure-details",failure.details),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.put.third.party.job.success.result <- function (job.id=NULL,client.token=NULL,current.revision=NULL,continuation.token=NULL,execution.details=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline put-third-party-job-success-result",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(current.revision),paste("--current-revision",current.revision),""),
                 ifelse(!is.null(continuation.token),paste("--continuation-token",continuation.token),""),
                 ifelse(!is.null(execution.details),paste("--execution-details",execution.details),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.start.pipeline.execution <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline start-pipeline-execution",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codepipeline.update.pipeline <- function (pipeline=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codepipeline update-pipeline",
                 ifelse(!is.null(pipeline),paste("--pipeline",pipeline),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
