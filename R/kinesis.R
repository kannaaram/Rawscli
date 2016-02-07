kinesis.add.tags.to.stream <- function (stream.name=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis add-tags-to-stream",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.create.stream <- function (stream.name=NULL,shard.count=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis create-stream",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(shard.count),paste("--shard-count",shard.count),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.decrease.stream.retention.period <- function (stream.name=NULL,retention.period.hours=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis decrease-stream-retention-period",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(retention.period.hours),paste("--retention-period-hours",retention.period.hours),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.delete.stream <- function (stream.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis delete-stream",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.describe.stream <- function (stream.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws kinesis describe-stream",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
kinesis.get.records <- function (shard.iterator=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis get-records",
                 ifelse(!is.null(shard.iterator),paste("--shard-iterator",shard.iterator),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.get.shard.iterator <- function (stream.name=NULL,shard.id=NULL,shard.iterator.type=NULL,starting.sequence.number=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis get-shard-iterator",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(shard.id),paste("--shard-id",shard.id),""),
                 ifelse(!is.null(shard.iterator.type),paste("--shard-iterator-type",shard.iterator.type),""),
                 ifelse(!is.null(starting.sequence.number),paste("--starting-sequence-number",starting.sequence.number),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.increase.stream.retention.period <- function (stream.name=NULL,retention.period.hours=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis increase-stream-retention-period",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(retention.period.hours),paste("--retention-period-hours",retention.period.hours),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.list.streams <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws kinesis list-streams",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
kinesis.list.tags.for.stream <- function (stream.name=NULL,exclusive.start.tag.key=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis list-tags-for-stream",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(exclusive.start.tag.key),paste("--exclusive-start-tag-key",exclusive.start.tag.key),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.merge.shards <- function (stream.name=NULL,shard.to.merge=NULL,adjacent.shard.to.merge=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis merge-shards",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(shard.to.merge),paste("--shard-to-merge",shard.to.merge),""),
                 ifelse(!is.null(adjacent.shard.to.merge),paste("--adjacent-shard-to-merge",adjacent.shard.to.merge),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.put.record <- function (stream.name=NULL,data=NULL,partition.key=NULL,explicit.hash.key=NULL,sequence.number.for.ordering=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis put-record",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(data),paste("--data",data),""),
                 ifelse(!is.null(partition.key),paste("--partition-key",partition.key),""),
                 ifelse(!is.null(explicit.hash.key),paste("--explicit-hash-key",explicit.hash.key),""),
                 ifelse(!is.null(sequence.number.for.ordering),paste("--sequence-number-for-ordering",sequence.number.for.ordering),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.put.records <- function (records=NULL,stream.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis put-records",
                 ifelse(!is.null(records),paste("--records",records),""),
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.remove.tags.from.stream <- function (stream.name=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis remove-tags-from-stream",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
kinesis.split.shard <- function (stream.name=NULL,shard.to.split=NULL,new.starting.hash.key=NULL,cli.input.json=NULL) {
    cmd <- paste("aws kinesis split-shard",
                 ifelse(!is.null(stream.name),paste("--stream-name",stream.name),""),
                 ifelse(!is.null(shard.to.split),paste("--shard-to-split",shard.to.split),""),
                 ifelse(!is.null(new.starting.hash.key),paste("--new-starting-hash-key",new.starting.hash.key),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
