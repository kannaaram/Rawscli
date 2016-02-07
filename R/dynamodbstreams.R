dynamodbstreams.describe.stream <- function (stream.arn=NULL,limit=NULL,exclusive.start.shard.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodbstreams describe-stream",
                 ifelse(!is.null(stream.arn),paste("--stream-arn",stream.arn),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(exclusive.start.shard.id),paste("--exclusive-start-shard-id",exclusive.start.shard.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodbstreams.get.records <- function (shard.iterator=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodbstreams get-records",
                 ifelse(!is.null(shard.iterator),paste("--shard-iterator",shard.iterator),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodbstreams.get.shard.iterator <- function (stream.arn=NULL,shard.id=NULL,shard.iterator.type=NULL,sequence.number=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodbstreams get-shard-iterator",
                 ifelse(!is.null(stream.arn),paste("--stream-arn",stream.arn),""),
                 ifelse(!is.null(shard.id),paste("--shard-id",shard.id),""),
                 ifelse(!is.null(shard.iterator.type),paste("--shard-iterator-type",shard.iterator.type),""),
                 ifelse(!is.null(sequence.number),paste("--sequence-number",sequence.number),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodbstreams.list.streams <- function (table.name=NULL,limit=NULL,exclusive.start.stream.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodbstreams list-streams",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(exclusive.start.stream.arn),paste("--exclusive-start-stream-arn",exclusive.start.stream.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
