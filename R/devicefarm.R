devicefarm.create.device.pool <- function (project.arn=NULL,name=NULL,description=NULL,rules=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm create-device-pool",
                 ifelse(!is.null(project.arn),paste("--project-arn",project.arn),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(rules),paste("--rules",rules),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.create.project <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm create-project",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.create.upload <- function (project.arn=NULL,name=NULL,type=NULL,content.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm create-upload",
                 ifelse(!is.null(project.arn),paste("--project-arn",project.arn),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(content.type),paste("--content-type",content.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.delete.device.pool <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm delete-device-pool",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.delete.project <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm delete-project",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.delete.run <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm delete-run",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.delete.upload <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm delete-upload",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.account.settings <- function (cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-account-settings",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.device <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-device",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.device.pool <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-device-pool",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.device.pool.compatibility <- function (device.pool.arn=NULL,app.arn=NULL,test.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-device-pool-compatibility",
                 ifelse(!is.null(device.pool.arn),paste("--device-pool-arn",device.pool.arn),""),
                 ifelse(!is.null(app.arn),paste("--app-arn",app.arn),""),
                 ifelse(!is.null(test.type),paste("--test-type",test.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.job <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-job",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.project <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-project",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.run <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-run",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.suite <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-suite",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.test <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-test",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.get.upload <- function (arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm get-upload",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.artifacts <- function (arn=NULL,type=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-artifacts",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.device.pools <- function (arn=NULL,type=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-device-pools",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.devices <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-devices",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.jobs <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-jobs",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.projects <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-projects",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.runs <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-runs",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.samples <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-samples",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.suites <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-suites",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.tests <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-tests",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.unique.problems <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-unique-problems",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.list.uploads <- function (arn=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm list-uploads",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.schedule.run <- function (project.arn=NULL,app.arn=NULL,device.pool.arn=NULL,name=NULL,test=NULL,configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm schedule-run",
                 ifelse(!is.null(project.arn),paste("--project-arn",project.arn),""),
                 ifelse(!is.null(app.arn),paste("--app-arn",app.arn),""),
                 ifelse(!is.null(device.pool.arn),paste("--device-pool-arn",device.pool.arn),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(test),paste("--test",test),""),
                 ifelse(!is.null(configuration),paste("--configuration",configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.update.device.pool <- function (arn=NULL,name=NULL,description=NULL,rules=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm update-device-pool",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(rules),paste("--rules",rules),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
devicefarm.update.project <- function (arn=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws devicefarm update-project",
                 ifelse(!is.null(arn),paste("--arn",arn),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
