firehose.create.delivery.stream <- function (delivery.stream.name=NULL,s3.destination.configuration=NULL,redshift.destination.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws firehose create-delivery-stream",
                 ifelse(!is.null(delivery.stream.name),paste("--delivery-stream-name",delivery.stream.name),""),
                 ifelse(!is.null(s3.destination.configuration),paste("--s3-destination-configuration",s3.destination.configuration),""),
                 ifelse(!is.null(redshift.destination.configuration),paste("--redshift-destination-configuration",redshift.destination.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
firehose.delete.delivery.stream <- function (delivery.stream.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws firehose delete-delivery-stream",
                 ifelse(!is.null(delivery.stream.name),paste("--delivery-stream-name",delivery.stream.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
firehose.describe.delivery.stream <- function (delivery.stream.name=NULL,limit=NULL,exclusive.start.destination.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws firehose describe-delivery-stream",
                 ifelse(!is.null(delivery.stream.name),paste("--delivery-stream-name",delivery.stream.name),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(exclusive.start.destination.id),paste("--exclusive-start-destination-id",exclusive.start.destination.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
firehose.list.delivery.streams <- function (limit=NULL,exclusive.start.delivery.stream.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws firehose list-delivery-streams",
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(exclusive.start.delivery.stream.name),paste("--exclusive-start-delivery-stream-name",exclusive.start.delivery.stream.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
firehose.put.record <- function (delivery.stream.name=NULL,record=NULL,cli.input.json=NULL) {
    cmd <- paste("aws firehose put-record",
                 ifelse(!is.null(delivery.stream.name),paste("--delivery-stream-name",delivery.stream.name),""),
                 ifelse(!is.null(record),paste("--record",record),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
firehose.put.record.batch <- function (delivery.stream.name=NULL,records=NULL,cli.input.json=NULL) {
    cmd <- paste("aws firehose put-record-batch",
                 ifelse(!is.null(delivery.stream.name),paste("--delivery-stream-name",delivery.stream.name),""),
                 ifelse(!is.null(records),paste("--records",records),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
firehose.update.destination <- function (delivery.stream.name=NULL,current.delivery.stream.version.id=NULL,destination.id=NULL,s3.destination.update=NULL,redshift.destination.update=NULL,cli.input.json=NULL) {
    cmd <- paste("aws firehose update-destination",
                 ifelse(!is.null(delivery.stream.name),paste("--delivery-stream-name",delivery.stream.name),""),
                 ifelse(!is.null(current.delivery.stream.version.id),paste("--current-delivery-stream-version-id",current.delivery.stream.version.id),""),
                 ifelse(!is.null(destination.id),paste("--destination-id",destination.id),""),
                 ifelse(!is.null(s3.destination.update),paste("--s3-destination-update",s3.destination.update),""),
                 ifelse(!is.null(redshift.destination.update),paste("--redshift-destination-update",redshift.destination.update),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
