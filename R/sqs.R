sqs.add.permission <- function (queue.url=NULL,label=NULL,aws.account.ids=NULL,actions=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs add-permission",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(label),paste("--label",label),""),
                 ifelse(!is.null(aws.account.ids),paste("--aws-account-ids",aws.account.ids),""),
                 ifelse(!is.null(actions),paste("--actions",actions),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.change.message.visibility <- function (queue.url=NULL,receipt.handle=NULL,visibility.timeout=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs change-message-visibility",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(receipt.handle),paste("--receipt-handle",receipt.handle),""),
                 ifelse(!is.null(visibility.timeout),paste("--visibility-timeout",visibility.timeout),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.change.message.visibility.batch <- function (queue.url=NULL,entries=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs change-message-visibility-batch",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(entries),paste("--entries",entries),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.create.queue <- function (queue.name=NULL,attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs create-queue",
                 ifelse(!is.null(queue.name),paste("--queue-name",queue.name),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.delete.message <- function (queue.url=NULL,receipt.handle=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs delete-message",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(receipt.handle),paste("--receipt-handle",receipt.handle),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.delete.message.batch <- function (queue.url=NULL,entries=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs delete-message-batch",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(entries),paste("--entries",entries),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.delete.queue <- function (queue.url=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs delete-queue",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.get.queue.attributes <- function (queue.url=NULL,attribute.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs get-queue-attributes",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(attribute.names),paste("--attribute-names",attribute.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.get.queue.url <- function (queue.name=NULL,queue.owner.aws.account.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs get-queue-url",
                 ifelse(!is.null(queue.name),paste("--queue-name",queue.name),""),
                 ifelse(!is.null(queue.owner.aws.account.id),paste("--queue-owner-aws-account-id",queue.owner.aws.account.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.list.dead.letter.source.queues <- function (queue.url=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs list-dead-letter-source-queues",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.list.queues <- function (queue.name.prefix=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs list-queues",
                 ifelse(!is.null(queue.name.prefix),paste("--queue-name-prefix",queue.name.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.purge.queue <- function (queue.url=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs purge-queue",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.receive.message <- function (queue.url=NULL,attribute.names=NULL,message.attribute.names=NULL,max.number.of.messages=NULL,visibility.timeout=NULL,wait.time.seconds=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs receive-message",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(attribute.names),paste("--attribute-names",attribute.names),""),
                 ifelse(!is.null(message.attribute.names),paste("--message-attribute-names",message.attribute.names),""),
                 ifelse(!is.null(max.number.of.messages),paste("--max-number-of-messages",max.number.of.messages),""),
                 ifelse(!is.null(visibility.timeout),paste("--visibility-timeout",visibility.timeout),""),
                 ifelse(!is.null(wait.time.seconds),paste("--wait-time-seconds",wait.time.seconds),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.remove.permission <- function (queue.url=NULL,label=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs remove-permission",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(label),paste("--label",label),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.send.message <- function (queue.url=NULL,message.body=NULL,delay.seconds=NULL,message.attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs send-message",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(message.body),paste("--message-body",message.body),""),
                 ifelse(!is.null(delay.seconds),paste("--delay-seconds",delay.seconds),""),
                 ifelse(!is.null(message.attributes),paste("--message-attributes",message.attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.send.message.batch <- function (queue.url=NULL,entries=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs send-message-batch",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(entries),paste("--entries",entries),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sqs.set.queue.attributes <- function (queue.url=NULL,attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sqs set-queue-attributes",
                 ifelse(!is.null(queue.url),paste("--queue-url",queue.url),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
