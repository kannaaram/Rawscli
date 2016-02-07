storagegateway.activate.gateway <- function (activation.key=NULL,gateway.name=NULL,gateway.timezone=NULL,gateway.region=NULL,gateway.type=NULL,tape.drive.type=NULL,medium.changer.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway activate-gateway",
                 ifelse(!is.null(activation.key),paste("--activation-key",activation.key),""),
                 ifelse(!is.null(gateway.name),paste("--gateway-name",gateway.name),""),
                 ifelse(!is.null(gateway.timezone),paste("--gateway-timezone",gateway.timezone),""),
                 ifelse(!is.null(gateway.region),paste("--gateway-region",gateway.region),""),
                 ifelse(!is.null(gateway.type),paste("--gateway-type",gateway.type),""),
                 ifelse(!is.null(tape.drive.type),paste("--tape-drive-type",tape.drive.type),""),
                 ifelse(!is.null(medium.changer.type),paste("--medium-changer-type",medium.changer.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.add.cache <- function (gateway.arn=NULL,disk.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway add-cache",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(disk.ids),paste("--disk-ids",disk.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.add.tags.to.resource <- function (resource.arn=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway add-tags-to-resource",
                 ifelse(!is.null(resource.arn),paste("--resource-arn",resource.arn),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.add.upload.buffer <- function (gateway.arn=NULL,disk.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway add-upload-buffer",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(disk.ids),paste("--disk-ids",disk.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.add.working.storage <- function (gateway.arn=NULL,disk.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway add-working-storage",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(disk.ids),paste("--disk-ids",disk.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.cancel.archival <- function (gateway.arn=NULL,tape.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway cancel-archival",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(tape.arn),paste("--tape-arn",tape.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.cancel.retrieval <- function (gateway.arn=NULL,tape.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway cancel-retrieval",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(tape.arn),paste("--tape-arn",tape.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.create.cached.iscsi.volume <- function (gateway.arn=NULL,volume.size.in.bytes=NULL,snapshot.id=NULL,target.name=NULL,network.interface.id=NULL,client.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway create-cached-iscsi-volume",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(volume.size.in.bytes),paste("--volume-size-in-bytes",volume.size.in.bytes),""),
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(!is.null(target.name),paste("--target-name",target.name),""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.create.snapshot <- function (volume.arn=NULL,snapshot.description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway create-snapshot",
                 ifelse(!is.null(volume.arn),paste("--volume-arn",volume.arn),""),
                 ifelse(!is.null(snapshot.description),paste("--snapshot-description",snapshot.description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.create.snapshot.from.volume.recovery.point <- function (volume.arn=NULL,snapshot.description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway create-snapshot-from-volume-recovery-point",
                 ifelse(!is.null(volume.arn),paste("--volume-arn",volume.arn),""),
                 ifelse(!is.null(snapshot.description),paste("--snapshot-description",snapshot.description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.create.stored.iscsi.volume <- function (gateway.arn=NULL,disk.id=NULL,snapshot.id=NULL,preserve.existing.data=FALSE,no.preserve.existing.data=FALSE,target.name=NULL,network.interface.id=NULL,cli.input.json=NULL) {
    if(preserve.existing.data && no.preserve.existing.data) stop("please set either preserve.existing.data or no.preserve.existing.data")
    cmd <- paste("aws storagegateway create-stored-iscsi-volume",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(disk.id),paste("--disk-id",disk.id),""),
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(preserve.existing.data,"--preserve-existing-data",""),
                 ifelse(no.preserve.existing.data,"--no-preserve-existing-data",""),
                 ifelse(!is.null(target.name),paste("--target-name",target.name),""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.create.tapes <- function (gateway.arn=NULL,tape.size.in.bytes=NULL,client.token=NULL,num.tapes.to.create=NULL,tape.barcode.prefix=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway create-tapes",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(tape.size.in.bytes),paste("--tape-size-in-bytes",tape.size.in.bytes),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(num.tapes.to.create),paste("--num-tapes-to-create",num.tapes.to.create),""),
                 ifelse(!is.null(tape.barcode.prefix),paste("--tape-barcode-prefix",tape.barcode.prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.delete.bandwidth.rate.limit <- function (gateway.arn=NULL,bandwidth.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway delete-bandwidth-rate-limit",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(bandwidth.type),paste("--bandwidth-type",bandwidth.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.delete.chap.credentials <- function (target.arn=NULL,initiator.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway delete-chap-credentials",
                 ifelse(!is.null(target.arn),paste("--target-arn",target.arn),""),
                 ifelse(!is.null(initiator.name),paste("--initiator-name",initiator.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.delete.gateway <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway delete-gateway",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.delete.snapshot.schedule <- function (volume.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway delete-snapshot-schedule",
                 ifelse(!is.null(volume.arn),paste("--volume-arn",volume.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.delete.tape <- function (gateway.arn=NULL,tape.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway delete-tape",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(tape.arn),paste("--tape-arn",tape.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.delete.tape.archive <- function (tape.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway delete-tape-archive",
                 ifelse(!is.null(tape.arn),paste("--tape-arn",tape.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.delete.volume <- function (volume.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway delete-volume",
                 ifelse(!is.null(volume.arn),paste("--volume-arn",volume.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.bandwidth.rate.limit <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-bandwidth-rate-limit",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.cache <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-cache",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.cached.iscsi.volumes <- function (volume.arns=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-cached-iscsi-volumes",
                 ifelse(!is.null(volume.arns),paste("--volume-arns",volume.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.chap.credentials <- function (target.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-chap-credentials",
                 ifelse(!is.null(target.arn),paste("--target-arn",target.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.gateway.information <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-gateway-information",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.maintenance.start.time <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-maintenance-start-time",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.snapshot.schedule <- function (volume.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-snapshot-schedule",
                 ifelse(!is.null(volume.arn),paste("--volume-arn",volume.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.stored.iscsi.volumes <- function (volume.arns=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-stored-iscsi-volumes",
                 ifelse(!is.null(volume.arns),paste("--volume-arns",volume.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.tape.archives <- function (tape.arns=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws storagegateway describe-tape-archives",
                 ifelse(!is.null(tape.arns),paste("--tape-arns",tape.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.tape.recovery.points <- function (gateway.arn=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws storagegateway describe-tape-recovery-points",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.tapes <- function (gateway.arn=NULL,tape.arns=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws storagegateway describe-tapes",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(tape.arns),paste("--tape-arns",tape.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.upload.buffer <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-upload-buffer",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.vtl.devices <- function (gateway.arn=NULL,vtl.device.arns=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws storagegateway describe-vtl-devices",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(vtl.device.arns),paste("--vtl-device-arns",vtl.device.arns),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
storagegateway.describe.working.storage <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway describe-working-storage",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.disable.gateway <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway disable-gateway",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.list.gateways <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws storagegateway list-gateways",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
storagegateway.list.local.disks <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway list-local-disks",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.list.tags.for.resource <- function (resource.arn=NULL,marker=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway list-tags-for-resource",
                 ifelse(!is.null(resource.arn),paste("--resource-arn",resource.arn),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.list.volume.initiators <- function (volume.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway list-volume-initiators",
                 ifelse(!is.null(volume.arn),paste("--volume-arn",volume.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.list.volume.recovery.points <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway list-volume-recovery-points",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.list.volumes <- function (gateway.arn=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws storagegateway list-volumes",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
storagegateway.remove.tags.from.resource <- function (resource.arn=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway remove-tags-from-resource",
                 ifelse(!is.null(resource.arn),paste("--resource-arn",resource.arn),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.reset.cache <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway reset-cache",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.retrieve.tape.archive <- function (tape.arn=NULL,gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway retrieve-tape-archive",
                 ifelse(!is.null(tape.arn),paste("--tape-arn",tape.arn),""),
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.retrieve.tape.recovery.point <- function (tape.arn=NULL,gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway retrieve-tape-recovery-point",
                 ifelse(!is.null(tape.arn),paste("--tape-arn",tape.arn),""),
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.shutdown.gateway <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway shutdown-gateway",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.start.gateway <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway start-gateway",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.update.bandwidth.rate.limit <- function (gateway.arn=NULL,average.upload.rate.limit.in.bits.per.sec=NULL,average.download.rate.limit.in.bits.per.sec=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway update-bandwidth-rate-limit",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(average.upload.rate.limit.in.bits.per.sec),paste("--average-upload-rate-limit-in-bits-per-sec",average.upload.rate.limit.in.bits.per.sec),""),
                 ifelse(!is.null(average.download.rate.limit.in.bits.per.sec),paste("--average-download-rate-limit-in-bits-per-sec",average.download.rate.limit.in.bits.per.sec),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.update.chap.credentials <- function (target.arn=NULL,secret.to.authenticate.initiator=NULL,initiator.name=NULL,secret.to.authenticate.target=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway update-chap-credentials",
                 ifelse(!is.null(target.arn),paste("--target-arn",target.arn),""),
                 ifelse(!is.null(secret.to.authenticate.initiator),paste("--secret-to-authenticate-initiator",secret.to.authenticate.initiator),""),
                 ifelse(!is.null(initiator.name),paste("--initiator-name",initiator.name),""),
                 ifelse(!is.null(secret.to.authenticate.target),paste("--secret-to-authenticate-target",secret.to.authenticate.target),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.update.gateway.information <- function (gateway.arn=NULL,gateway.name=NULL,gateway.timezone=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway update-gateway-information",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(gateway.name),paste("--gateway-name",gateway.name),""),
                 ifelse(!is.null(gateway.timezone),paste("--gateway-timezone",gateway.timezone),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.update.gateway.software.now <- function (gateway.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway update-gateway-software-now",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.update.maintenance.start.time <- function (gateway.arn=NULL,hour.of.day=NULL,minute.of.hour=NULL,day.of.week=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway update-maintenance-start-time",
                 ifelse(!is.null(gateway.arn),paste("--gateway-arn",gateway.arn),""),
                 ifelse(!is.null(hour.of.day),paste("--hour-of-day",hour.of.day),""),
                 ifelse(!is.null(minute.of.hour),paste("--minute-of-hour",minute.of.hour),""),
                 ifelse(!is.null(day.of.week),paste("--day-of-week",day.of.week),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.update.snapshot.schedule <- function (volume.arn=NULL,start.at=NULL,recurrence.in.hours=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway update-snapshot-schedule",
                 ifelse(!is.null(volume.arn),paste("--volume-arn",volume.arn),""),
                 ifelse(!is.null(start.at),paste("--start-at",start.at),""),
                 ifelse(!is.null(recurrence.in.hours),paste("--recurrence-in-hours",recurrence.in.hours),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
storagegateway.update.vtl.device.type <- function (vtl.device.arn=NULL,device.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws storagegateway update-vtl-device-type",
                 ifelse(!is.null(vtl.device.arn),paste("--vtl-device-arn",vtl.device.arn),""),
                 ifelse(!is.null(device.type),paste("--device-type",device.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
