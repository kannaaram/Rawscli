elastictranscoder.cancel.job <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder cancel-job",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.create.job <- function (pipeline.id=NULL,input=NULL,outputs=NULL,output.key.prefix=NULL,playlists=NULL,user.metadata=NULL,job.output=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder create-job",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(input),paste("--input",input),""),
                 ifelse(!is.null(outputs),paste("--outputs",outputs),""),
                 ifelse(!is.null(output.key.prefix),paste("--output-key-prefix",output.key.prefix),""),
                 ifelse(!is.null(playlists),paste("--playlists",playlists),""),
                 ifelse(!is.null(user.metadata),paste("--user-metadata",user.metadata),""),
                 ifelse(!is.null(job.output),paste("--job-output",job.output),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.create.pipeline <- function (name=NULL,input.bucket=NULL,output.bucket=NULL,role=NULL,aws.kms.key.arn=NULL,notifications=NULL,content.config=NULL,thumbnail.config=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder create-pipeline",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(input.bucket),paste("--input-bucket",input.bucket),""),
                 ifelse(!is.null(output.bucket),paste("--output-bucket",output.bucket),""),
                 ifelse(!is.null(role),paste("--role",role),""),
                 ifelse(!is.null(aws.kms.key.arn),paste("--aws-kms-key-arn",aws.kms.key.arn),""),
                 ifelse(!is.null(notifications),paste("--notifications",notifications),""),
                 ifelse(!is.null(content.config),paste("--content-config",content.config),""),
                 ifelse(!is.null(thumbnail.config),paste("--thumbnail-config",thumbnail.config),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.create.preset <- function (name=NULL,description=NULL,container=NULL,video=NULL,audio=NULL,thumbnails=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder create-preset",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(container),paste("--container",container),""),
                 ifelse(!is.null(video),paste("--video",video),""),
                 ifelse(!is.null(audio),paste("--audio",audio),""),
                 ifelse(!is.null(thumbnails),paste("--thumbnails",thumbnails),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.delete.pipeline <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder delete-pipeline",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.delete.preset <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder delete-preset",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.list.jobs.by.pipeline <- function (pipeline.id=NULL,ascending=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws elastictranscoder list-jobs-by-pipeline",
                 ifelse(!is.null(pipeline.id),paste("--pipeline-id",pipeline.id),""),
                 ifelse(!is.null(ascending),paste("--ascending",ascending),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.list.jobs.by.status <- function (status=NULL,ascending=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws elastictranscoder list-jobs-by-status",
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(ascending),paste("--ascending",ascending),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.list.pipelines <- function (ascending=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws elastictranscoder list-pipelines",
                 ifelse(!is.null(ascending),paste("--ascending",ascending),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.list.presets <- function (ascending=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws elastictranscoder list-presets",
                 ifelse(!is.null(ascending),paste("--ascending",ascending),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.read.job <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder read-job",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.read.pipeline <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder read-pipeline",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.read.preset <- function (id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder read-preset",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.test.role <- function (role=NULL,input.bucket=NULL,output.bucket=NULL,topics=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder test-role",
                 ifelse(!is.null(role),paste("--role",role),""),
                 ifelse(!is.null(input.bucket),paste("--input-bucket",input.bucket),""),
                 ifelse(!is.null(output.bucket),paste("--output-bucket",output.bucket),""),
                 ifelse(!is.null(topics),paste("--topics",topics),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.update.pipeline <- function (id=NULL,name=NULL,input.bucket=NULL,role=NULL,aws.kms.key.arn=NULL,notifications=NULL,content.config=NULL,thumbnail.config=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder update-pipeline",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(input.bucket),paste("--input-bucket",input.bucket),""),
                 ifelse(!is.null(role),paste("--role",role),""),
                 ifelse(!is.null(aws.kms.key.arn),paste("--aws-kms-key-arn",aws.kms.key.arn),""),
                 ifelse(!is.null(notifications),paste("--notifications",notifications),""),
                 ifelse(!is.null(content.config),paste("--content-config",content.config),""),
                 ifelse(!is.null(thumbnail.config),paste("--thumbnail-config",thumbnail.config),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.update.pipeline.notifications <- function (id=NULL,notifications=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder update-pipeline-notifications",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(notifications),paste("--notifications",notifications),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
elastictranscoder.update.pipeline.status <- function (id=NULL,status=NULL,cli.input.json=NULL) {
    cmd <- paste("aws elastictranscoder update-pipeline-status",
                 ifelse(!is.null(id),paste("--id",id),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
