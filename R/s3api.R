s3api.abort.multipart.upload <- function (bucket=NULL,key=NULL,upload.id=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api abort-multipart-upload",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.complete.multipart.upload <- function (bucket=NULL,key=NULL,multipart.upload=NULL,upload.id=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api complete-multipart-upload",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(multipart.upload),paste("--multipart-upload",multipart.upload),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.copy.object <- function (acl=NULL,bucket=NULL,cache.control=NULL,content.disposition=NULL,content.encoding=NULL,content.language=NULL,content.type=NULL,copy.source=NULL,copy.source.if.match=NULL,copy.source.if.modified.since=NULL,copy.source.if.none.match=NULL,copy.source.if.unmodified.since=NULL,expires=NULL,grant.full.control=NULL,grant.read=NULL,grant.read.acp=NULL,grant.write.acp=NULL,key=NULL,metadata=NULL,metadata.directive=NULL,server.side.encryption=NULL,storage.class=NULL,website.redirect.location=NULL,sse.customer.algorithm=NULL,sse.customer.key=NULL,sse.customer.key.md5=NULL,ssekms.key.id=NULL,copy.source.sse.customer.algorithm=NULL,copy.source.sse.customer.key=NULL,copy.source.sse.customer.key.md5=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api copy-object",
                 ifelse(!is.null(acl),paste("--acl",acl),""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cache.control),paste("--cache-control",cache.control),""),
                 ifelse(!is.null(content.disposition),paste("--content-disposition",content.disposition),""),
                 ifelse(!is.null(content.encoding),paste("--content-encoding",content.encoding),""),
                 ifelse(!is.null(content.language),paste("--content-language",content.language),""),
                 ifelse(!is.null(content.type),paste("--content-type",content.type),""),
                 ifelse(!is.null(copy.source),paste("--copy-source",copy.source),""),
                 ifelse(!is.null(copy.source.if.match),paste("--copy-source-if-match",copy.source.if.match),""),
                 ifelse(!is.null(copy.source.if.modified.since),paste("--copy-source-if-modified-since",copy.source.if.modified.since),""),
                 ifelse(!is.null(copy.source.if.none.match),paste("--copy-source-if-none-match",copy.source.if.none.match),""),
                 ifelse(!is.null(copy.source.if.unmodified.since),paste("--copy-source-if-unmodified-since",copy.source.if.unmodified.since),""),
                 ifelse(!is.null(expires),paste("--expires",expires),""),
                 ifelse(!is.null(grant.full.control),paste("--grant-full-control",grant.full.control),""),
                 ifelse(!is.null(grant.read),paste("--grant-read",grant.read),""),
                 ifelse(!is.null(grant.read.acp),paste("--grant-read-acp",grant.read.acp),""),
                 ifelse(!is.null(grant.write.acp),paste("--grant-write-acp",grant.write.acp),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(metadata),paste("--metadata",metadata),""),
                 ifelse(!is.null(metadata.directive),paste("--metadata-directive",metadata.directive),""),
                 ifelse(!is.null(server.side.encryption),paste("--server-side-encryption",server.side.encryption),""),
                 ifelse(!is.null(storage.class),paste("--storage-class",storage.class),""),
                 ifelse(!is.null(website.redirect.location),paste("--website-redirect-location",website.redirect.location),""),
                 ifelse(!is.null(sse.customer.algorithm),paste("--sse-customer-algorithm",sse.customer.algorithm),""),
                 ifelse(!is.null(sse.customer.key),paste("--sse-customer-key",sse.customer.key),""),
                 ifelse(!is.null(sse.customer.key.md5),paste("--sse-customer-key-md5",sse.customer.key.md5),""),
                 ifelse(!is.null(ssekms.key.id),paste("--ssekms-key-id",ssekms.key.id),""),
                 ifelse(!is.null(copy.source.sse.customer.algorithm),paste("--copy-source-sse-customer-algorithm",copy.source.sse.customer.algorithm),""),
                 ifelse(!is.null(copy.source.sse.customer.key),paste("--copy-source-sse-customer-key",copy.source.sse.customer.key),""),
                 ifelse(!is.null(copy.source.sse.customer.key.md5),paste("--copy-source-sse-customer-key-md5",copy.source.sse.customer.key.md5),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.create.bucket <- function (acl=NULL,bucket=NULL,create.bucket.configuration=NULL,grant.full.control=NULL,grant.read=NULL,grant.read.acp=NULL,grant.write=NULL,grant.write.acp=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api create-bucket",
                 ifelse(!is.null(acl),paste("--acl",acl),""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(create.bucket.configuration),paste("--create-bucket-configuration",create.bucket.configuration),""),
                 ifelse(!is.null(grant.full.control),paste("--grant-full-control",grant.full.control),""),
                 ifelse(!is.null(grant.read),paste("--grant-read",grant.read),""),
                 ifelse(!is.null(grant.read.acp),paste("--grant-read-acp",grant.read.acp),""),
                 ifelse(!is.null(grant.write),paste("--grant-write",grant.write),""),
                 ifelse(!is.null(grant.write.acp),paste("--grant-write-acp",grant.write.acp),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.create.multipart.upload <- function (acl=NULL,bucket=NULL,cache.control=NULL,content.disposition=NULL,content.encoding=NULL,content.language=NULL,content.type=NULL,expires=NULL,grant.full.control=NULL,grant.read=NULL,grant.read.acp=NULL,grant.write.acp=NULL,key=NULL,metadata=NULL,server.side.encryption=NULL,storage.class=NULL,website.redirect.location=NULL,sse.customer.algorithm=NULL,sse.customer.key=NULL,sse.customer.key.md5=NULL,ssekms.key.id=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api create-multipart-upload",
                 ifelse(!is.null(acl),paste("--acl",acl),""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cache.control),paste("--cache-control",cache.control),""),
                 ifelse(!is.null(content.disposition),paste("--content-disposition",content.disposition),""),
                 ifelse(!is.null(content.encoding),paste("--content-encoding",content.encoding),""),
                 ifelse(!is.null(content.language),paste("--content-language",content.language),""),
                 ifelse(!is.null(content.type),paste("--content-type",content.type),""),
                 ifelse(!is.null(expires),paste("--expires",expires),""),
                 ifelse(!is.null(grant.full.control),paste("--grant-full-control",grant.full.control),""),
                 ifelse(!is.null(grant.read),paste("--grant-read",grant.read),""),
                 ifelse(!is.null(grant.read.acp),paste("--grant-read-acp",grant.read.acp),""),
                 ifelse(!is.null(grant.write.acp),paste("--grant-write-acp",grant.write.acp),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(metadata),paste("--metadata",metadata),""),
                 ifelse(!is.null(server.side.encryption),paste("--server-side-encryption",server.side.encryption),""),
                 ifelse(!is.null(storage.class),paste("--storage-class",storage.class),""),
                 ifelse(!is.null(website.redirect.location),paste("--website-redirect-location",website.redirect.location),""),
                 ifelse(!is.null(sse.customer.algorithm),paste("--sse-customer-algorithm",sse.customer.algorithm),""),
                 ifelse(!is.null(sse.customer.key),paste("--sse-customer-key",sse.customer.key),""),
                 ifelse(!is.null(sse.customer.key.md5),paste("--sse-customer-key-md5",sse.customer.key.md5),""),
                 ifelse(!is.null(ssekms.key.id),paste("--ssekms-key-id",ssekms.key.id),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.bucket <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-bucket",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.bucket.cors <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-bucket-cors",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.bucket.lifecycle <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-bucket-lifecycle",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.bucket.policy <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-bucket-policy",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.bucket.replication <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-bucket-replication",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.bucket.tagging <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-bucket-tagging",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.bucket.website <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-bucket-website",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.object <- function (bucket=NULL,key=NULL,mfa=NULL,version.id=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-object",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(mfa),paste("--mfa",mfa),""),
                 ifelse(!is.null(version.id),paste("--version-id",version.id),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.delete.objects <- function (bucket=NULL,delete=NULL,mfa=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api delete-objects",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(delete),paste("--delete",delete),""),
                 ifelse(!is.null(mfa),paste("--mfa",mfa),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.acl <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-acl",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.cors <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-cors",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.lifecycle <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-lifecycle",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.lifecycle.configuration <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-lifecycle-configuration",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.location <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-location",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.logging <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-logging",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.notification <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-notification",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.notification.configuration <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-notification-configuration",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.policy <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-policy",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.replication <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-replication",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.request.payment <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-request-payment",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.tagging <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-tagging",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.versioning <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-versioning",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.bucket.website <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-bucket-website",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.object <- function (bucket=NULL,if.match=NULL,if.modified.since=NULL,if.none.match=NULL,if.unmodified.since=NULL,key=NULL,range=NULL,response.cache.control=NULL,response.content.disposition=NULL,response.content.encoding=NULL,response.content.language=NULL,response.content.type=NULL,response.expires=NULL,version.id=NULL,sse.customer.algorithm=NULL,sse.customer.key=NULL,sse.customer.key.md5=NULL,request.payer=NULL,outfile=NULL) {
    cmd <- paste("aws s3api get-object",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(if.match),paste("--if-match",if.match),""),
                 ifelse(!is.null(if.modified.since),paste("--if-modified-since",if.modified.since),""),
                 ifelse(!is.null(if.none.match),paste("--if-none-match",if.none.match),""),
                 ifelse(!is.null(if.unmodified.since),paste("--if-unmodified-since",if.unmodified.since),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(range),paste("--range",range),""),
                 ifelse(!is.null(response.cache.control),paste("--response-cache-control",response.cache.control),""),
                 ifelse(!is.null(response.content.disposition),paste("--response-content-disposition",response.content.disposition),""),
                 ifelse(!is.null(response.content.encoding),paste("--response-content-encoding",response.content.encoding),""),
                 ifelse(!is.null(response.content.language),paste("--response-content-language",response.content.language),""),
                 ifelse(!is.null(response.content.type),paste("--response-content-type",response.content.type),""),
                 ifelse(!is.null(response.expires),paste("--response-expires",response.expires),""),
                 ifelse(!is.null(version.id),paste("--version-id",version.id),""),
                 ifelse(!is.null(sse.customer.algorithm),paste("--sse-customer-algorithm",sse.customer.algorithm),""),
                 ifelse(!is.null(sse.customer.key),paste("--sse-customer-key",sse.customer.key),""),
                 ifelse(!is.null(sse.customer.key.md5),paste("--sse-customer-key-md5",sse.customer.key.md5),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""))
    system(cmd,intern=TRUE) 
}
s3api.get.object.acl <- function (bucket=NULL,key=NULL,version.id=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api get-object-acl",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(version.id),paste("--version-id",version.id),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.get.object.torrent <- function (bucket=NULL,key=NULL,request.payer=NULL,outfile=NULL) {
    cmd <- paste("aws s3api get-object-torrent",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""))
    system(cmd,intern=TRUE) 
}
s3api.head.bucket <- function (bucket=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api head-bucket",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.head.object <- function (bucket=NULL,if.match=NULL,if.modified.since=NULL,if.none.match=NULL,if.unmodified.since=NULL,key=NULL,range=NULL,version.id=NULL,sse.customer.algorithm=NULL,sse.customer.key=NULL,sse.customer.key.md5=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api head-object",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(if.match),paste("--if-match",if.match),""),
                 ifelse(!is.null(if.modified.since),paste("--if-modified-since",if.modified.since),""),
                 ifelse(!is.null(if.none.match),paste("--if-none-match",if.none.match),""),
                 ifelse(!is.null(if.unmodified.since),paste("--if-unmodified-since",if.unmodified.since),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(range),paste("--range",range),""),
                 ifelse(!is.null(version.id),paste("--version-id",version.id),""),
                 ifelse(!is.null(sse.customer.algorithm),paste("--sse-customer-algorithm",sse.customer.algorithm),""),
                 ifelse(!is.null(sse.customer.key),paste("--sse-customer-key",sse.customer.key),""),
                 ifelse(!is.null(sse.customer.key.md5),paste("--sse-customer-key-md5",sse.customer.key.md5),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.list.buckets <- function (cli.input.json=NULL) {
    cmd <- paste("aws s3api list-buckets",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.list.multipart.uploads <- function (bucket=NULL,delimiter=NULL,encoding.type=NULL,prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws s3api list-multipart-uploads",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(delimiter),paste("--delimiter",delimiter),""),
                 ifelse(!is.null(encoding.type),paste("--encoding-type",encoding.type),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
s3api.list.object.versions <- function (bucket=NULL,delimiter=NULL,encoding.type=NULL,prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws s3api list-object-versions",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(delimiter),paste("--delimiter",delimiter),""),
                 ifelse(!is.null(encoding.type),paste("--encoding-type",encoding.type),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
s3api.list.objects <- function (bucket=NULL,delimiter=NULL,encoding.type=NULL,prefix=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws s3api list-objects",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(delimiter),paste("--delimiter",delimiter),""),
                 ifelse(!is.null(encoding.type),paste("--encoding-type",encoding.type),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
s3api.list.parts <- function (bucket=NULL,key=NULL,upload.id=NULL,request.payer=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws s3api list-parts",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.acl <- function (acl=NULL,access.control.policy=NULL,bucket=NULL,content.md5=NULL,grant.full.control=NULL,grant.read=NULL,grant.read.acp=NULL,grant.write=NULL,grant.write.acp=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-acl",
                 ifelse(!is.null(acl),paste("--acl",acl),""),
                 ifelse(!is.null(access.control.policy),paste("--access-control-policy",access.control.policy),""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(grant.full.control),paste("--grant-full-control",grant.full.control),""),
                 ifelse(!is.null(grant.read),paste("--grant-read",grant.read),""),
                 ifelse(!is.null(grant.read.acp),paste("--grant-read-acp",grant.read.acp),""),
                 ifelse(!is.null(grant.write),paste("--grant-write",grant.write),""),
                 ifelse(!is.null(grant.write.acp),paste("--grant-write-acp",grant.write.acp),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.cors <- function (bucket=NULL,cors.configuration=NULL,content.md5=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-cors",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cors.configuration),paste("--cors-configuration",cors.configuration),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.lifecycle <- function (bucket=NULL,content.md5=NULL,lifecycle.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-lifecycle",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(lifecycle.configuration),paste("--lifecycle-configuration",lifecycle.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.lifecycle.configuration <- function (bucket=NULL,lifecycle.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-lifecycle-configuration",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(lifecycle.configuration),paste("--lifecycle-configuration",lifecycle.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.logging <- function (bucket=NULL,bucket.logging.status=NULL,content.md5=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-logging",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(bucket.logging.status),paste("--bucket-logging-status",bucket.logging.status),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.notification <- function (bucket=NULL,content.md5=NULL,notification.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-notification",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(notification.configuration),paste("--notification-configuration",notification.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.notification.configuration <- function (bucket=NULL,notification.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-notification-configuration",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(notification.configuration),paste("--notification-configuration",notification.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.policy <- function (bucket=NULL,content.md5=NULL,policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-policy",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.replication <- function (bucket=NULL,content.md5=NULL,replication.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-replication",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(replication.configuration),paste("--replication-configuration",replication.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.request.payment <- function (bucket=NULL,content.md5=NULL,request.payment.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-request-payment",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(request.payment.configuration),paste("--request-payment-configuration",request.payment.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.tagging <- function (bucket=NULL,content.md5=NULL,tagging=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-tagging",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(tagging),paste("--tagging",tagging),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.versioning <- function (bucket=NULL,content.md5=NULL,mfa=NULL,versioning.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-versioning",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(mfa),paste("--mfa",mfa),""),
                 ifelse(!is.null(versioning.configuration),paste("--versioning-configuration",versioning.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.bucket.website <- function (bucket=NULL,content.md5=NULL,website.configuration=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-bucket-website",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(website.configuration),paste("--website-configuration",website.configuration),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.object <- function (acl=NULL,body=NULL,bucket=NULL,cache.control=NULL,content.disposition=NULL,content.encoding=NULL,content.language=NULL,content.length=NULL,content.md5=NULL,content.type=NULL,expires=NULL,grant.full.control=NULL,grant.read=NULL,grant.read.acp=NULL,grant.write.acp=NULL,key=NULL,metadata=NULL,server.side.encryption=NULL,storage.class=NULL,website.redirect.location=NULL,sse.customer.algorithm=NULL,sse.customer.key=NULL,sse.customer.key.md5=NULL,ssekms.key.id=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-object",
                 ifelse(!is.null(acl),paste("--acl",acl),""),
                 ifelse(!is.null(body),paste("--body",body),""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(cache.control),paste("--cache-control",cache.control),""),
                 ifelse(!is.null(content.disposition),paste("--content-disposition",content.disposition),""),
                 ifelse(!is.null(content.encoding),paste("--content-encoding",content.encoding),""),
                 ifelse(!is.null(content.language),paste("--content-language",content.language),""),
                 ifelse(!is.null(content.length),paste("--content-length",content.length),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(content.type),paste("--content-type",content.type),""),
                 ifelse(!is.null(expires),paste("--expires",expires),""),
                 ifelse(!is.null(grant.full.control),paste("--grant-full-control",grant.full.control),""),
                 ifelse(!is.null(grant.read),paste("--grant-read",grant.read),""),
                 ifelse(!is.null(grant.read.acp),paste("--grant-read-acp",grant.read.acp),""),
                 ifelse(!is.null(grant.write.acp),paste("--grant-write-acp",grant.write.acp),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(metadata),paste("--metadata",metadata),""),
                 ifelse(!is.null(server.side.encryption),paste("--server-side-encryption",server.side.encryption),""),
                 ifelse(!is.null(storage.class),paste("--storage-class",storage.class),""),
                 ifelse(!is.null(website.redirect.location),paste("--website-redirect-location",website.redirect.location),""),
                 ifelse(!is.null(sse.customer.algorithm),paste("--sse-customer-algorithm",sse.customer.algorithm),""),
                 ifelse(!is.null(sse.customer.key),paste("--sse-customer-key",sse.customer.key),""),
                 ifelse(!is.null(sse.customer.key.md5),paste("--sse-customer-key-md5",sse.customer.key.md5),""),
                 ifelse(!is.null(ssekms.key.id),paste("--ssekms-key-id",ssekms.key.id),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.put.object.acl <- function (acl=NULL,access.control.policy=NULL,bucket=NULL,content.md5=NULL,grant.full.control=NULL,grant.read=NULL,grant.read.acp=NULL,grant.write=NULL,grant.write.acp=NULL,key=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api put-object-acl",
                 ifelse(!is.null(acl),paste("--acl",acl),""),
                 ifelse(!is.null(access.control.policy),paste("--access-control-policy",access.control.policy),""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(grant.full.control),paste("--grant-full-control",grant.full.control),""),
                 ifelse(!is.null(grant.read),paste("--grant-read",grant.read),""),
                 ifelse(!is.null(grant.read.acp),paste("--grant-read-acp",grant.read.acp),""),
                 ifelse(!is.null(grant.write),paste("--grant-write",grant.write),""),
                 ifelse(!is.null(grant.write.acp),paste("--grant-write-acp",grant.write.acp),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.restore.object <- function (bucket=NULL,key=NULL,version.id=NULL,restore.request=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api restore-object",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(version.id),paste("--version-id",version.id),""),
                 ifelse(!is.null(restore.request),paste("--restore-request",restore.request),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.upload.part <- function (body=NULL,bucket=NULL,content.length=NULL,content.md5=NULL,key=NULL,part.number=NULL,upload.id=NULL,sse.customer.algorithm=NULL,sse.customer.key=NULL,sse.customer.key.md5=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api upload-part",
                 ifelse(!is.null(body),paste("--body",body),""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(content.length),paste("--content-length",content.length),""),
                 ifelse(!is.null(content.md5),paste("--content-md5",content.md5),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(part.number),paste("--part-number",part.number),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(sse.customer.algorithm),paste("--sse-customer-algorithm",sse.customer.algorithm),""),
                 ifelse(!is.null(sse.customer.key),paste("--sse-customer-key",sse.customer.key),""),
                 ifelse(!is.null(sse.customer.key.md5),paste("--sse-customer-key-md5",sse.customer.key.md5),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
s3api.upload.part.copy <- function (bucket=NULL,copy.source=NULL,copy.source.if.match=NULL,copy.source.if.modified.since=NULL,copy.source.if.none.match=NULL,copy.source.if.unmodified.since=NULL,copy.source.range=NULL,key=NULL,part.number=NULL,upload.id=NULL,sse.customer.algorithm=NULL,sse.customer.key=NULL,sse.customer.key.md5=NULL,copy.source.sse.customer.algorithm=NULL,copy.source.sse.customer.key=NULL,copy.source.sse.customer.key.md5=NULL,request.payer=NULL,cli.input.json=NULL) {
    cmd <- paste("aws s3api upload-part-copy",
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(copy.source),paste("--copy-source",copy.source),""),
                 ifelse(!is.null(copy.source.if.match),paste("--copy-source-if-match",copy.source.if.match),""),
                 ifelse(!is.null(copy.source.if.modified.since),paste("--copy-source-if-modified-since",copy.source.if.modified.since),""),
                 ifelse(!is.null(copy.source.if.none.match),paste("--copy-source-if-none-match",copy.source.if.none.match),""),
                 ifelse(!is.null(copy.source.if.unmodified.since),paste("--copy-source-if-unmodified-since",copy.source.if.unmodified.since),""),
                 ifelse(!is.null(copy.source.range),paste("--copy-source-range",copy.source.range),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(part.number),paste("--part-number",part.number),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(sse.customer.algorithm),paste("--sse-customer-algorithm",sse.customer.algorithm),""),
                 ifelse(!is.null(sse.customer.key),paste("--sse-customer-key",sse.customer.key),""),
                 ifelse(!is.null(sse.customer.key.md5),paste("--sse-customer-key-md5",sse.customer.key.md5),""),
                 ifelse(!is.null(copy.source.sse.customer.algorithm),paste("--copy-source-sse-customer-algorithm",copy.source.sse.customer.algorithm),""),
                 ifelse(!is.null(copy.source.sse.customer.key),paste("--copy-source-sse-customer-key",copy.source.sse.customer.key),""),
                 ifelse(!is.null(copy.source.sse.customer.key.md5),paste("--copy-source-sse-customer-key-md5",copy.source.sse.customer.key.md5),""),
                 ifelse(!is.null(request.payer),paste("--request-payer",request.payer),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
