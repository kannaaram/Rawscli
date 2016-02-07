cognito-sync.bulk.publish <- function (identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync bulk-publish",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.delete.dataset <- function (identity.pool.id=NULL,identity.id=NULL,dataset.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync delete-dataset",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(dataset.name),paste("--dataset-name",dataset.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.describe.dataset <- function (identity.pool.id=NULL,identity.id=NULL,dataset.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync describe-dataset",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(dataset.name),paste("--dataset-name",dataset.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.describe.identity.pool.usage <- function (identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync describe-identity-pool-usage",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.describe.identity.usage <- function (identity.pool.id=NULL,identity.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync describe-identity-usage",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.get.bulk.publish.details <- function (identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync get-bulk-publish-details",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.get.cognito.events <- function (identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync get-cognito-events",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.get.identity.pool.configuration <- function (identity.pool.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync get-identity-pool-configuration",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.list.datasets <- function (identity.pool.id=NULL,identity.id=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync list-datasets",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.list.identity.pool.usage <- function (next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync list-identity-pool-usage",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.list.records <- function (identity.pool.id=NULL,identity.id=NULL,dataset.name=NULL,last.sync.count=NULL,next.token=NULL,max.results=NULL,sync.session.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync list-records",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(dataset.name),paste("--dataset-name",dataset.name),""),
                 ifelse(!is.null(last.sync.count),paste("--last-sync-count",last.sync.count),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(sync.session.token),paste("--sync-session-token",sync.session.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.register.device <- function (identity.pool.id=NULL,identity.id=NULL,platform=NULL,token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync register-device",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(platform),paste("--platform",platform),""),
                 ifelse(!is.null(token),paste("--token",token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.set.cognito.events <- function (identity.pool.id=NULL,events=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync set-cognito-events",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(events),paste("--events",events),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.set.identity.pool.configuration <- function (identity.pool.id=NULL,push.sync=NULL,cognito.streams=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync set-identity-pool-configuration",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(push.sync),paste("--push-sync",push.sync),""),
                 ifelse(!is.null(cognito.streams),paste("--cognito-streams",cognito.streams),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.subscribe.to.dataset <- function (identity.pool.id=NULL,identity.id=NULL,dataset.name=NULL,device.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync subscribe-to-dataset",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(dataset.name),paste("--dataset-name",dataset.name),""),
                 ifelse(!is.null(device.id),paste("--device-id",device.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.unsubscribe.from.dataset <- function (identity.pool.id=NULL,identity.id=NULL,dataset.name=NULL,device.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync unsubscribe-from-dataset",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(dataset.name),paste("--dataset-name",dataset.name),""),
                 ifelse(!is.null(device.id),paste("--device-id",device.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cognito-sync.update.records <- function (identity.pool.id=NULL,identity.id=NULL,dataset.name=NULL,device.id=NULL,record.patches=NULL,sync.session.token=NULL,client.context=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cognito-sync update-records",
                 ifelse(!is.null(identity.pool.id),paste("--identity-pool-id",identity.pool.id),""),
                 ifelse(!is.null(identity.id),paste("--identity-id",identity.id),""),
                 ifelse(!is.null(dataset.name),paste("--dataset-name",dataset.name),""),
                 ifelse(!is.null(device.id),paste("--device-id",device.id),""),
                 ifelse(!is.null(record.patches),paste("--record-patches",record.patches),""),
                 ifelse(!is.null(sync.session.token),paste("--sync-session-token",sync.session.token),""),
                 ifelse(!is.null(client.context),paste("--client-context",client.context),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
