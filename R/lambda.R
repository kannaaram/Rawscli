lambda.add.permission <- function (function.name=NULL,statement.id=NULL,action=NULL,principal=NULL,source.arn=NULL,source.account=NULL,qualifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda add-permission",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(statement.id),paste("--statement-id",statement.id),""),
                 ifelse(!is.null(action),paste("--action",action),""),
                 ifelse(!is.null(principal),paste("--principal",principal),""),
                 ifelse(!is.null(source.arn),paste("--source-arn",source.arn),""),
                 ifelse(!is.null(source.account),paste("--source-account",source.account),""),
                 ifelse(!is.null(qualifier),paste("--qualifier",qualifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.create.alias <- function (function.name=NULL,name=NULL,function.version=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda create-alias",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(function.version),paste("--function-version",function.version),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.create.event.source.mapping <- function (event.source.arn=NULL,function.name=NULL,enabled=FALSE,no.enabled=FALSE,batch.size=NULL,starting.position=NULL,cli.input.json=NULL) {
    if(enabled && no.enabled) stop("please set either enabled or no.enabled")
    cmd <- paste("aws lambda create-event-source-mapping",
                 ifelse(!is.null(event.source.arn),paste("--event-source-arn",event.source.arn),""),
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(enabled,"--enabled",""),
                 ifelse(no.enabled,"--no-enabled",""),
                 ifelse(!is.null(batch.size),paste("--batch-size",batch.size),""),
                 ifelse(!is.null(starting.position),paste("--starting-position",starting.position),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.create.function <- function (function.name=NULL,runtime=NULL,role=NULL,handler=NULL,code=NULL,description=NULL,timeout=NULL,memory.size=NULL,publish=FALSE,no.publish=FALSE,zip.file=NULL,cli.input.json=NULL) {
    if(publish && no.publish) stop("please set either publish or no.publish")
    cmd <- paste("aws lambda create-function",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(runtime),paste("--runtime",runtime),""),
                 ifelse(!is.null(role),paste("--role",role),""),
                 ifelse(!is.null(handler),paste("--handler",handler),""),
                 ifelse(!is.null(code),paste("--code",code),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(timeout),paste("--timeout",timeout),""),
                 ifelse(!is.null(memory.size),paste("--memory-size",memory.size),""),
                 ifelse(publish,"--publish",""),
                 ifelse(no.publish,"--no-publish",""),
                 ifelse(!is.null(zip.file),paste("--zip-file",zip.file),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.delete.alias <- function (function.name=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda delete-alias",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.delete.event.source.mapping <- function (uuid=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda delete-event-source-mapping",
                 ifelse(!is.null(uuid),paste("--uuid",uuid),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.delete.function <- function (function.name=NULL,qualifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda delete-function",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(qualifier),paste("--qualifier",qualifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.get.alias <- function (function.name=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda get-alias",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.get.event.source.mapping <- function (uuid=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda get-event-source-mapping",
                 ifelse(!is.null(uuid),paste("--uuid",uuid),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.get.function <- function (function.name=NULL,qualifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda get-function",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(qualifier),paste("--qualifier",qualifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.get.function.configuration <- function (function.name=NULL,qualifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda get-function-configuration",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(qualifier),paste("--qualifier",qualifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.get.policy <- function (function.name=NULL,qualifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda get-policy",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(qualifier),paste("--qualifier",qualifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.invoke <- function (function.name=NULL,invocation.type=NULL,log.type=NULL,client.context=NULL,payload=NULL,qualifier=NULL,outfile=NULL) {
    cmd <- paste("aws lambda invoke",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(invocation.type),paste("--invocation-type",invocation.type),""),
                 ifelse(!is.null(log.type),paste("--log-type",log.type),""),
                 ifelse(!is.null(client.context),paste("--client-context",client.context),""),
                 ifelse(!is.null(payload),paste("--payload",payload),""),
                 ifelse(!is.null(qualifier),paste("--qualifier",qualifier),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""))
    system(cmd,intern=TRUE) 
}
lambda.invoke.async <- function (function.name=NULL,invoke.args=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda invoke-async",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(invoke.args),paste("--invoke-args",invoke.args),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.list.aliases <- function (function.name=NULL,function.version=NULL,marker=NULL,max.items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda list-aliases",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(function.version),paste("--function-version",function.version),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.list.event.source.mappings <- function (event.source.arn=NULL,function.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws lambda list-event-source-mappings",
                 ifelse(!is.null(event.source.arn),paste("--event-source-arn",event.source.arn),""),
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
lambda.list.functions <- function (max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws lambda list-functions",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
lambda.list.versions.by.function <- function (function.name=NULL,marker=NULL,max.items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda list-versions-by-function",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.publish.version <- function (function.name=NULL,code.sha.256=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda publish-version",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(code.sha.256),paste("--code-sha-256",code.sha.256),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.remove.permission <- function (function.name=NULL,statement.id=NULL,qualifier=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda remove-permission",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(statement.id),paste("--statement-id",statement.id),""),
                 ifelse(!is.null(qualifier),paste("--qualifier",qualifier),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.update.alias <- function (function.name=NULL,name=NULL,function.version=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda update-alias",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(function.version),paste("--function-version",function.version),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.update.event.source.mapping <- function (uuid=NULL,function.name=NULL,enabled=FALSE,no.enabled=FALSE,batch.size=NULL,cli.input.json=NULL) {
    if(enabled && no.enabled) stop("please set either enabled or no.enabled")
    cmd <- paste("aws lambda update-event-source-mapping",
                 ifelse(!is.null(uuid),paste("--uuid",uuid),""),
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(enabled,"--enabled",""),
                 ifelse(no.enabled,"--no-enabled",""),
                 ifelse(!is.null(batch.size),paste("--batch-size",batch.size),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.update.function.code <- function (function.name=NULL,zip.file=NULL,s3.bucket=NULL,s3.key=NULL,s3.object.version=NULL,publish=FALSE,no.publish=FALSE,cli.input.json=NULL) {
    if(publish && no.publish) stop("please set either publish or no.publish")
    cmd <- paste("aws lambda update-function-code",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(zip.file),paste("--zip-file",zip.file),""),
                 ifelse(!is.null(s3.bucket),paste("--s3-bucket",s3.bucket),""),
                 ifelse(!is.null(s3.key),paste("--s3-key",s3.key),""),
                 ifelse(!is.null(s3.object.version),paste("--s3-object-version",s3.object.version),""),
                 ifelse(publish,"--publish",""),
                 ifelse(no.publish,"--no-publish",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
lambda.update.function.configuration <- function (function.name=NULL,role=NULL,handler=NULL,description=NULL,timeout=NULL,memory.size=NULL,cli.input.json=NULL) {
    cmd <- paste("aws lambda update-function-configuration",
                 ifelse(!is.null(function.name),paste("--function-name",function.name),""),
                 ifelse(!is.null(role),paste("--role",role),""),
                 ifelse(!is.null(handler),paste("--handler",handler),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(timeout),paste("--timeout",timeout),""),
                 ifelse(!is.null(memory.size),paste("--memory-size",memory.size),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
