ec2.accept.vpc.peering.connection <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.peering.connection.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 accept-vpc-peering-connection",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.peering.connection.id),paste("--vpc-peering-connection-id",vpc.peering.connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.allocate.address <- function (dry.run=FALSE,no.dry.run=FALSE,domain=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 allocate-address",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(domain),paste("--domain",domain),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.allocate.hosts <- function (auto.placement=NULL,client.token=NULL,instance.type=NULL,quantity=NULL,availability.zone=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 allocate-hosts",
                 ifelse(!is.null(auto.placement),paste("--auto-placement",auto.placement),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(instance.type),paste("--instance-type",instance.type),""),
                 ifelse(!is.null(quantity),paste("--quantity",quantity),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.assign.private.ip.addresses <- function (network.interface.id=NULL,private.ip.addresses=NULL,secondary.private.ip.address.count=NULL,allow.reassignment=FALSE,no.allow.reassignment=FALSE,cli.input.json=NULL) {
    if(allow.reassignment && no.allow.reassignment) stop("please set either allow.reassignment or no.allow.reassignment")
    cmd <- paste("aws ec2 assign-private-ip-addresses",
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(private.ip.addresses),paste("--private-ip-addresses",private.ip.addresses),""),
                 ifelse(!is.null(secondary.private.ip.address.count),paste("--secondary-private-ip-address-count",secondary.private.ip.address.count),""),
                 ifelse(allow.reassignment,"--allow-reassignment",""),
                 ifelse(no.allow.reassignment,"--no-allow-reassignment",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.associate.address <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,public.ip=NULL,allocation.id=NULL,network.interface.id=NULL,private.ip.address=NULL,allow.reassociation=FALSE,no.allow.reassociation=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(allow.reassociation && no.allow.reassociation) stop("please set either allow.reassociation or no.allow.reassociation")
    cmd <- paste("aws ec2 associate-address",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(public.ip),paste("--public-ip",public.ip),""),
                 ifelse(!is.null(allocation.id),paste("--allocation-id",allocation.id),""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(private.ip.address),paste("--private-ip-address",private.ip.address),""),
                 ifelse(allow.reassociation,"--allow-reassociation",""),
                 ifelse(no.allow.reassociation,"--no-allow-reassociation",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.associate.dhcp.options <- function (dry.run=FALSE,no.dry.run=FALSE,dhcp.options.id=NULL,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 associate-dhcp-options",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(dhcp.options.id),paste("--dhcp-options-id",dhcp.options.id),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.associate.route.table <- function (dry.run=FALSE,no.dry.run=FALSE,subnet.id=NULL,route.table.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 associate-route-table",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(!is.null(route.table.id),paste("--route-table-id",route.table.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.attach.classic.link.vpc <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,vpc.id=NULL,groups=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 attach-classic-link-vpc",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(groups),paste("--groups",groups),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.attach.internet.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,internet.gateway.id=NULL,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 attach-internet-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(internet.gateway.id),paste("--internet-gateway-id",internet.gateway.id),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.attach.network.interface <- function (dry.run=FALSE,no.dry.run=FALSE,network.interface.id=NULL,instance.id=NULL,device.index=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 attach-network-interface",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(device.index),paste("--device-index",device.index),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.attach.volume <- function (dry.run=FALSE,no.dry.run=FALSE,volume.id=NULL,instance.id=NULL,device=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 attach-volume",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(device),paste("--device",device),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.attach.vpn.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,vpn.gateway.id=NULL,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 attach-vpn-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpn.gateway.id),paste("--vpn-gateway-id",vpn.gateway.id),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.authorize.security.group.egress <- function (dry.run=FALSE,no.dry.run=FALSE,group.id=NULL,ip.permissions=NULL,protocol=NULL,port=NULL,cidr=NULL,source.group=NULL,group.owner=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 authorize-security-group-egress",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.id),paste("--group-id",group.id),""),
                 ifelse(!is.null(ip.permissions),paste("--ip-permissions",ip.permissions),""),
                 ifelse(!is.null(protocol),paste("--protocol",protocol),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(cidr),paste("--cidr",cidr),""),
                 ifelse(!is.null(source.group),paste("--source-group",source.group),""),
                 ifelse(!is.null(group.owner),paste("--group-owner",group.owner),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.authorize.security.group.ingress <- function (dry.run=FALSE,no.dry.run=FALSE,group.name=NULL,group.id=NULL,ip.permissions=NULL,protocol=NULL,port=NULL,cidr=NULL,source.group=NULL,group.owner=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 authorize-security-group-ingress",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(group.id),paste("--group-id",group.id),""),
                 ifelse(!is.null(ip.permissions),paste("--ip-permissions",ip.permissions),""),
                 ifelse(!is.null(protocol),paste("--protocol",protocol),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(cidr),paste("--cidr",cidr),""),
                 ifelse(!is.null(source.group),paste("--source-group",source.group),""),
                 ifelse(!is.null(group.owner),paste("--group-owner",group.owner),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.bundle.instance <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,storage=NULL,bucket=NULL,prefix=NULL,owner.akid=NULL,owner.sak=NULL,policy=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 bundle-instance",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(storage),paste("--storage",storage),""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(owner.akid),paste("--owner-akid",owner.akid),""),
                 ifelse(!is.null(owner.sak),paste("--owner-sak",owner.sak),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.cancel.bundle.task <- function (dry.run=FALSE,no.dry.run=FALSE,bundle.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 cancel-bundle-task",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(bundle.id),paste("--bundle-id",bundle.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.cancel.conversion.task <- function (dry.run=FALSE,no.dry.run=FALSE,conversion.task.id=NULL,reason.message=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 cancel-conversion-task",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(conversion.task.id),paste("--conversion-task-id",conversion.task.id),""),
                 ifelse(!is.null(reason.message),paste("--reason-message",reason.message),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.cancel.export.task <- function (export.task.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 cancel-export-task",
                 ifelse(!is.null(export.task.id),paste("--export-task-id",export.task.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.cancel.import.task <- function (dry.run=FALSE,no.dry.run=FALSE,import.task.id=NULL,cancel.reason=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 cancel-import-task",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(import.task.id),paste("--import-task-id",import.task.id),""),
                 ifelse(!is.null(cancel.reason),paste("--cancel-reason",cancel.reason),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.cancel.reserved.instances.listing <- function (reserved.instances.listing.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 cancel-reserved-instances-listing",
                 ifelse(!is.null(reserved.instances.listing.id),paste("--reserved-instances-listing-id",reserved.instances.listing.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.cancel.spot.fleet.requests <- function (dry.run=FALSE,no.dry.run=FALSE,spot.fleet.request.ids=NULL,terminate.instances=FALSE,no.terminate.instances=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(terminate.instances && no.terminate.instances) stop("please set either terminate.instances or no.terminate.instances")
    cmd <- paste("aws ec2 cancel-spot-fleet-requests",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(spot.fleet.request.ids),paste("--spot-fleet-request-ids",spot.fleet.request.ids),""),
                 ifelse(terminate.instances,"--terminate-instances",""),
                 ifelse(no.terminate.instances,"--no-terminate-instances",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.cancel.spot.instance.requests <- function (dry.run=FALSE,no.dry.run=FALSE,spot.instance.request.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 cancel-spot-instance-requests",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(spot.instance.request.ids),paste("--spot-instance-request-ids",spot.instance.request.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.confirm.product.instance <- function (dry.run=FALSE,no.dry.run=FALSE,product.code=NULL,instance.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 confirm-product-instance",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(product.code),paste("--product-code",product.code),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.copy.image <- function (dry.run=FALSE,no.dry.run=FALSE,source.region=NULL,source.image.id=NULL,name=NULL,description=NULL,client.token=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 copy-image",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(source.region),paste("--source-region",source.region),""),
                 ifelse(!is.null(source.image.id),paste("--source-image-id",source.image.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.copy.snapshot <- function (dry.run=FALSE,no.dry.run=FALSE,source.region=NULL,source.snapshot.id=NULL,description=NULL,destination.region=NULL,presigned.url=NULL,encrypted=FALSE,no.encrypted=FALSE,kms.key.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(encrypted && no.encrypted) stop("please set either encrypted or no.encrypted")
    cmd <- paste("aws ec2 copy-snapshot",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(source.region),paste("--source-region",source.region),""),
                 ifelse(!is.null(source.snapshot.id),paste("--source-snapshot-id",source.snapshot.id),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(destination.region),paste("--destination-region",destination.region),""),
                 ifelse(!is.null(presigned.url),paste("--presigned-url",presigned.url),""),
                 ifelse(encrypted,"--encrypted",""),
                 ifelse(no.encrypted,"--no-encrypted",""),
                 ifelse(!is.null(kms.key.id),paste("--kms-key-id",kms.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.customer.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,type=NULL,public.ip=NULL,bgp.asn=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-customer-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(public.ip),paste("--public-ip",public.ip),""),
                 ifelse(!is.null(bgp.asn),paste("--bgp-asn",bgp.asn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.dhcp.options <- function (dry.run=FALSE,no.dry.run=FALSE,dhcp.configurations=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-dhcp-options",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(dhcp.configurations),paste("--dhcp-configurations",dhcp.configurations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.flow.logs <- function (resource.ids=NULL,resource.type=NULL,traffic.type=NULL,log.group.name=NULL,deliver.logs.permission.arn=NULL,client.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 create-flow-logs",
                 ifelse(!is.null(resource.ids),paste("--resource-ids",resource.ids),""),
                 ifelse(!is.null(resource.type),paste("--resource-type",resource.type),""),
                 ifelse(!is.null(traffic.type),paste("--traffic-type",traffic.type),""),
                 ifelse(!is.null(log.group.name),paste("--log-group-name",log.group.name),""),
                 ifelse(!is.null(deliver.logs.permission.arn),paste("--deliver-logs-permission-arn",deliver.logs.permission.arn),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.image <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,name=NULL,description=NULL,no.reboot=FALSE,reboot=FALSE,block.device.mappings=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(no.reboot && reboot) stop("please set either no.reboot or reboot")
    cmd <- paste("aws ec2 create-image",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(no.reboot,"--no-reboot",""),
                 ifelse(reboot,"--reboot",""),
                 ifelse(!is.null(block.device.mappings),paste("--block-device-mappings",block.device.mappings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.instance.export.task <- function (description=NULL,instance.id=NULL,target.environment=NULL,export.to.s3.task=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 create-instance-export-task",
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(target.environment),paste("--target-environment",target.environment),""),
                 ifelse(!is.null(export.to.s3.task),paste("--export-to-s3-task",export.to.s3.task),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.internet.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-internet-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.key.pair <- function (dry.run=FALSE,no.dry.run=FALSE,key.name=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-key-pair",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(key.name),paste("--key-name",key.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.network.acl <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-network-acl",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.network.acl.entry <- function (dry.run=FALSE,no.dry.run=FALSE,network.acl.id=NULL,rule.number=NULL,protocol=NULL,rule.action=NULL,egress=FALSE,ingress=FALSE,cidr.block=NULL,icmp.type.code=NULL,port.range=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(egress && ingress) stop("please set either egress or ingress")
    cmd <- paste("aws ec2 create-network-acl-entry",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.acl.id),paste("--network-acl-id",network.acl.id),""),
                 ifelse(!is.null(rule.number),paste("--rule-number",rule.number),""),
                 ifelse(!is.null(protocol),paste("--protocol",protocol),""),
                 ifelse(!is.null(rule.action),paste("--rule-action",rule.action),""),
                 ifelse(egress,"--egress",""),
                 ifelse(ingress,"--ingress",""),
                 ifelse(!is.null(cidr.block),paste("--cidr-block",cidr.block),""),
                 ifelse(!is.null(icmp.type.code),paste("--icmp-type-code",icmp.type.code),""),
                 ifelse(!is.null(port.range),paste("--port-range",port.range),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.network.interface <- function (subnet.id=NULL,description=NULL,private.ip.address=NULL,groups=NULL,private.ip.addresses=NULL,secondary.private.ip.address.count=NULL,dry.run=FALSE,no.dry.run=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-network-interface",
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(private.ip.address),paste("--private-ip-address",private.ip.address),""),
                 ifelse(!is.null(groups),paste("--groups",groups),""),
                 ifelse(!is.null(private.ip.addresses),paste("--private-ip-addresses",private.ip.addresses),""),
                 ifelse(!is.null(secondary.private.ip.address.count),paste("--secondary-private-ip-address-count",secondary.private.ip.address.count),""),
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.placement.group <- function (dry.run=FALSE,no.dry.run=FALSE,group.name=NULL,strategy=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-placement-group",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(strategy),paste("--strategy",strategy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.reserved.instances.listing <- function (reserved.instances.id=NULL,instance.count=NULL,price.schedules=NULL,client.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 create-reserved-instances-listing",
                 ifelse(!is.null(reserved.instances.id),paste("--reserved-instances-id",reserved.instances.id),""),
                 ifelse(!is.null(instance.count),paste("--instance-count",instance.count),""),
                 ifelse(!is.null(price.schedules),paste("--price-schedules",price.schedules),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.route <- function (dry.run=FALSE,no.dry.run=FALSE,route.table.id=NULL,destination.cidr.block=NULL,gateway.id=NULL,instance.id=NULL,network.interface.id=NULL,vpc.peering.connection.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-route",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(route.table.id),paste("--route-table-id",route.table.id),""),
                 ifelse(!is.null(destination.cidr.block),paste("--destination-cidr-block",destination.cidr.block),""),
                 ifelse(!is.null(gateway.id),paste("--gateway-id",gateway.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(vpc.peering.connection.id),paste("--vpc-peering-connection-id",vpc.peering.connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.route.table <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-route-table",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.security.group <- function (dry.run=FALSE,no.dry.run=FALSE,group.name=NULL,description=NULL,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-security-group",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.snapshot <- function (dry.run=FALSE,no.dry.run=FALSE,volume.id=NULL,description=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-snapshot",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.spot.datafeed.subscription <- function (dry.run=FALSE,no.dry.run=FALSE,bucket=NULL,prefix=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-spot-datafeed-subscription",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(bucket),paste("--bucket",bucket),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.subnet <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,cidr.block=NULL,availability.zone=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-subnet",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cidr.block),paste("--cidr-block",cidr.block),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.tags <- function (dry.run=FALSE,no.dry.run=FALSE,resources=NULL,tags=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-tags",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(resources),paste("--resources",resources),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.volume <- function (dry.run=FALSE,no.dry.run=FALSE,size=NULL,snapshot.id=NULL,availability.zone=NULL,volume.type=NULL,iops=NULL,encrypted=FALSE,no.encrypted=FALSE,kms.key.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(encrypted && no.encrypted) stop("please set either encrypted or no.encrypted")
    cmd <- paste("aws ec2 create-volume",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(size),paste("--size",size),""),
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(volume.type),paste("--volume-type",volume.type),""),
                 ifelse(!is.null(iops),paste("--iops",iops),""),
                 ifelse(encrypted,"--encrypted",""),
                 ifelse(no.encrypted,"--no-encrypted",""),
                 ifelse(!is.null(kms.key.id),paste("--kms-key-id",kms.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.vpc <- function (dry.run=FALSE,no.dry.run=FALSE,cidr.block=NULL,instance.tenancy=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-vpc",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(cidr.block),paste("--cidr-block",cidr.block),""),
                 ifelse(!is.null(instance.tenancy),paste("--instance-tenancy",instance.tenancy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.vpc.endpoint <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,service.name=NULL,policy.document=NULL,route.table.ids=NULL,client.token=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-vpc-endpoint",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(service.name),paste("--service-name",service.name),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(!is.null(route.table.ids),paste("--route-table-ids",route.table.ids),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.vpc.peering.connection <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,peer.vpc.id=NULL,peer.owner.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-vpc-peering-connection",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(peer.vpc.id),paste("--peer-vpc-id",peer.vpc.id),""),
                 ifelse(!is.null(peer.owner.id),paste("--peer-owner-id",peer.owner.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.vpn.connection <- function (dry.run=FALSE,no.dry.run=FALSE,type=NULL,customer.gateway.id=NULL,vpn.gateway.id=NULL,options=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-vpn-connection",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(customer.gateway.id),paste("--customer-gateway-id",customer.gateway.id),""),
                 ifelse(!is.null(vpn.gateway.id),paste("--vpn-gateway-id",vpn.gateway.id),""),
                 ifelse(!is.null(options),paste("--options",options),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.vpn.connection.route <- function (vpn.connection.id=NULL,destination.cidr.block=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 create-vpn-connection-route",
                 ifelse(!is.null(vpn.connection.id),paste("--vpn-connection-id",vpn.connection.id),""),
                 ifelse(!is.null(destination.cidr.block),paste("--destination-cidr-block",destination.cidr.block),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.create.vpn.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,type=NULL,availability.zone=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 create-vpn-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.customer.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,customer.gateway.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-customer-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(customer.gateway.id),paste("--customer-gateway-id",customer.gateway.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.dhcp.options <- function (dry.run=FALSE,no.dry.run=FALSE,dhcp.options.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-dhcp-options",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(dhcp.options.id),paste("--dhcp-options-id",dhcp.options.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.flow.logs <- function (flow.log.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 delete-flow-logs",
                 ifelse(!is.null(flow.log.ids),paste("--flow-log-ids",flow.log.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.internet.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,internet.gateway.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-internet-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(internet.gateway.id),paste("--internet-gateway-id",internet.gateway.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.key.pair <- function (dry.run=FALSE,no.dry.run=FALSE,key.name=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-key-pair",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(key.name),paste("--key-name",key.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.network.acl <- function (dry.run=FALSE,no.dry.run=FALSE,network.acl.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-network-acl",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.acl.id),paste("--network-acl-id",network.acl.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.network.acl.entry <- function (dry.run=FALSE,no.dry.run=FALSE,network.acl.id=NULL,rule.number=NULL,egress=FALSE,ingress=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(egress && ingress) stop("please set either egress or ingress")
    cmd <- paste("aws ec2 delete-network-acl-entry",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.acl.id),paste("--network-acl-id",network.acl.id),""),
                 ifelse(!is.null(rule.number),paste("--rule-number",rule.number),""),
                 ifelse(egress,"--egress",""),
                 ifelse(ingress,"--ingress",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.network.interface <- function (dry.run=FALSE,no.dry.run=FALSE,network.interface.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-network-interface",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.placement.group <- function (dry.run=FALSE,no.dry.run=FALSE,group.name=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-placement-group",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.route <- function (dry.run=FALSE,no.dry.run=FALSE,route.table.id=NULL,destination.cidr.block=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-route",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(route.table.id),paste("--route-table-id",route.table.id),""),
                 ifelse(!is.null(destination.cidr.block),paste("--destination-cidr-block",destination.cidr.block),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.route.table <- function (dry.run=FALSE,no.dry.run=FALSE,route.table.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-route-table",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(route.table.id),paste("--route-table-id",route.table.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.security.group <- function (dry.run=FALSE,no.dry.run=FALSE,group.name=NULL,group.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-security-group",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(group.id),paste("--group-id",group.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.snapshot <- function (dry.run=FALSE,no.dry.run=FALSE,snapshot.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-snapshot",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.spot.datafeed.subscription <- function (dry.run=FALSE,no.dry.run=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-spot-datafeed-subscription",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.subnet <- function (dry.run=FALSE,no.dry.run=FALSE,subnet.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-subnet",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.tags <- function (dry.run=FALSE,no.dry.run=FALSE,resources=NULL,tags=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-tags",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(resources),paste("--resources",resources),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.volume <- function (dry.run=FALSE,no.dry.run=FALSE,volume.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-volume",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.vpc <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-vpc",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.vpc.endpoints <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.endpoint.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-vpc-endpoints",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.endpoint.ids),paste("--vpc-endpoint-ids",vpc.endpoint.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.vpc.peering.connection <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.peering.connection.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-vpc-peering-connection",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.peering.connection.id),paste("--vpc-peering-connection-id",vpc.peering.connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.vpn.connection <- function (dry.run=FALSE,no.dry.run=FALSE,vpn.connection.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-vpn-connection",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpn.connection.id),paste("--vpn-connection-id",vpn.connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.vpn.connection.route <- function (vpn.connection.id=NULL,destination.cidr.block=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 delete-vpn-connection-route",
                 ifelse(!is.null(vpn.connection.id),paste("--vpn-connection-id",vpn.connection.id),""),
                 ifelse(!is.null(destination.cidr.block),paste("--destination-cidr-block",destination.cidr.block),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.delete.vpn.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,vpn.gateway.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 delete-vpn-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpn.gateway.id),paste("--vpn-gateway-id",vpn.gateway.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.deregister.image <- function (dry.run=FALSE,no.dry.run=FALSE,image.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 deregister-image",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(image.id),paste("--image-id",image.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.account.attributes <- function (dry.run=FALSE,no.dry.run=FALSE,attribute.names=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-account-attributes",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(attribute.names),paste("--attribute-names",attribute.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.addresses <- function (dry.run=FALSE,no.dry.run=FALSE,public.ips=NULL,filters=NULL,allocation.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-addresses",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(public.ips),paste("--public-ips",public.ips),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(allocation.ids),paste("--allocation-ids",allocation.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.availability.zones <- function (dry.run=FALSE,no.dry.run=FALSE,zone.names=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-availability-zones",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(zone.names),paste("--zone-names",zone.names),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.bundle.tasks <- function (dry.run=FALSE,no.dry.run=FALSE,bundle.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-bundle-tasks",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(bundle.ids),paste("--bundle-ids",bundle.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.classic.link.instances <- function (dry.run=FALSE,no.dry.run=FALSE,instance.ids=NULL,filters=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-classic-link-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.conversion.tasks <- function (dry.run=FALSE,no.dry.run=FALSE,filters=NULL,conversion.task.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-conversion-tasks",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(conversion.task.ids),paste("--conversion-task-ids",conversion.task.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.customer.gateways <- function (dry.run=FALSE,no.dry.run=FALSE,customer.gateway.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-customer-gateways",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(customer.gateway.ids),paste("--customer-gateway-ids",customer.gateway.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.dhcp.options <- function (dry.run=FALSE,no.dry.run=FALSE,dhcp.options.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-dhcp-options",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(dhcp.options.ids),paste("--dhcp-options-ids",dhcp.options.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.export.tasks <- function (export.task.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 describe-export-tasks",
                 ifelse(!is.null(export.task.ids),paste("--export-task-ids",export.task.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.flow.logs <- function (flow.log.ids=NULL,filter=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 describe-flow-logs",
                 ifelse(!is.null(flow.log.ids),paste("--flow-log-ids",flow.log.ids),""),
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.hosts <- function (host.ids=NULL,next.token=NULL,max.results=NULL,filter=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 describe-hosts",
                 ifelse(!is.null(host.ids),paste("--host-ids",host.ids),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.id.format <- function (resource=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 describe-id-format",
                 ifelse(!is.null(resource),paste("--resource",resource),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.image.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,image.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-image-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(image.id),paste("--image-id",image.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.images <- function (dry.run=FALSE,no.dry.run=FALSE,image.ids=NULL,owners=NULL,executable.users=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-images",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(image.ids),paste("--image-ids",image.ids),""),
                 ifelse(!is.null(owners),paste("--owners",owners),""),
                 ifelse(!is.null(executable.users),paste("--executable-users",executable.users),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.import.image.tasks <- function (dry.run=FALSE,no.dry.run=FALSE,import.task.ids=NULL,next.token=NULL,max.results=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-import-image-tasks",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(import.task.ids),paste("--import-task-ids",import.task.ids),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.import.snapshot.tasks <- function (dry.run=FALSE,no.dry.run=FALSE,import.task.ids=NULL,next.token=NULL,max.results=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-import-snapshot-tasks",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(import.task.ids),paste("--import-task-ids",import.task.ids),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.instance.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-instance-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.instance.status <- function (dry.run=FALSE,no.dry.run=FALSE,instance.ids=NULL,filters=NULL,include.all.instances=FALSE,no.include.all.instances=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(include.all.instances && no.include.all.instances) stop("please set either include.all.instances or no.include.all.instances")
    cmd <- paste("aws ec2 describe-instance-status",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(include.all.instances,"--include-all-instances",""),
                 ifelse(no.include.all.instances,"--no-include-all-instances",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.instances <- function (dry.run=FALSE,no.dry.run=FALSE,instance.ids=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.internet.gateways <- function (dry.run=FALSE,no.dry.run=FALSE,internet.gateway.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-internet-gateways",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(internet.gateway.ids),paste("--internet-gateway-ids",internet.gateway.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.key.pairs <- function (dry.run=FALSE,no.dry.run=FALSE,key.names=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-key-pairs",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(key.names),paste("--key-names",key.names),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.moving.addresses <- function (dry.run=FALSE,no.dry.run=FALSE,public.ips=NULL,next.token=NULL,filters=NULL,max.results=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-moving-addresses",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(public.ips),paste("--public-ips",public.ips),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.network.acls <- function (dry.run=FALSE,no.dry.run=FALSE,network.acl.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-network-acls",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.acl.ids),paste("--network-acl-ids",network.acl.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.network.interface.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,network.interface.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-network-interface-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.network.interfaces <- function (dry.run=FALSE,no.dry.run=FALSE,network.interface.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-network-interfaces",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.interface.ids),paste("--network-interface-ids",network.interface.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.placement.groups <- function (dry.run=FALSE,no.dry.run=FALSE,group.names=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-placement-groups",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.names),paste("--group-names",group.names),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.prefix.lists <- function (dry.run=FALSE,no.dry.run=FALSE,prefix.list.ids=NULL,filters=NULL,max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-prefix-lists",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(prefix.list.ids),paste("--prefix-list-ids",prefix.list.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.regions <- function (dry.run=FALSE,no.dry.run=FALSE,region.names=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-regions",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(region.names),paste("--region-names",region.names),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.reserved.instances <- function (dry.run=FALSE,no.dry.run=FALSE,reserved.instances.ids=NULL,filters=NULL,offering.type=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-reserved-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(reserved.instances.ids),paste("--reserved-instances-ids",reserved.instances.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(offering.type),paste("--offering-type",offering.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.reserved.instances.listings <- function (reserved.instances.id=NULL,reserved.instances.listing.id=NULL,filters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 describe-reserved-instances-listings",
                 ifelse(!is.null(reserved.instances.id),paste("--reserved-instances-id",reserved.instances.id),""),
                 ifelse(!is.null(reserved.instances.listing.id),paste("--reserved-instances-listing-id",reserved.instances.listing.id),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.reserved.instances.modifications <- function (reserved.instances.modification.ids=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws ec2 describe-reserved-instances-modifications",
                 ifelse(!is.null(reserved.instances.modification.ids),paste("--reserved-instances-modification-ids",reserved.instances.modification.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.reserved.instances.offerings <- function (dry.run=FALSE,no.dry.run=FALSE,reserved.instances.offering.ids=NULL,instance.type=NULL,availability.zone=NULL,product.description=NULL,filters=NULL,instance.tenancy=NULL,offering.type=NULL,include.marketplace=FALSE,no.include.marketplace=FALSE,min.duration=NULL,max.duration=NULL,max.instance.count=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(include.marketplace && no.include.marketplace) stop("please set either include.marketplace or no.include.marketplace")
    cmd <- paste("aws ec2 describe-reserved-instances-offerings",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(reserved.instances.offering.ids),paste("--reserved-instances-offering-ids",reserved.instances.offering.ids),""),
                 ifelse(!is.null(instance.type),paste("--instance-type",instance.type),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(product.description),paste("--product-description",product.description),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(instance.tenancy),paste("--instance-tenancy",instance.tenancy),""),
                 ifelse(!is.null(offering.type),paste("--offering-type",offering.type),""),
                 ifelse(include.marketplace,"--include-marketplace",""),
                 ifelse(no.include.marketplace,"--no-include-marketplace",""),
                 ifelse(!is.null(min.duration),paste("--min-duration",min.duration),""),
                 ifelse(!is.null(max.duration),paste("--max-duration",max.duration),""),
                 ifelse(!is.null(max.instance.count),paste("--max-instance-count",max.instance.count),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.route.tables <- function (dry.run=FALSE,no.dry.run=FALSE,route.table.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-route-tables",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(route.table.ids),paste("--route-table-ids",route.table.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.security.groups <- function (dry.run=FALSE,no.dry.run=FALSE,group.names=NULL,group.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-security-groups",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.names),paste("--group-names",group.names),""),
                 ifelse(!is.null(group.ids),paste("--group-ids",group.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.snapshot.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,snapshot.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-snapshot-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.snapshots <- function (dry.run=FALSE,no.dry.run=FALSE,snapshot.ids=NULL,owner.ids=NULL,restorable.by.user.ids=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-snapshots",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(snapshot.ids),paste("--snapshot-ids",snapshot.ids),""),
                 ifelse(!is.null(owner.ids),paste("--owner-ids",owner.ids),""),
                 ifelse(!is.null(restorable.by.user.ids),paste("--restorable-by-user-ids",restorable.by.user.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.spot.datafeed.subscription <- function (dry.run=FALSE,no.dry.run=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-spot-datafeed-subscription",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.spot.fleet.instances <- function (dry.run=FALSE,no.dry.run=FALSE,spot.fleet.request.id=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-spot-fleet-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(spot.fleet.request.id),paste("--spot-fleet-request-id",spot.fleet.request.id),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.spot.fleet.request.history <- function (dry.run=FALSE,no.dry.run=FALSE,spot.fleet.request.id=NULL,event.type=NULL,start.time=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-spot-fleet-request-history",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(spot.fleet.request.id),paste("--spot-fleet-request-id",spot.fleet.request.id),""),
                 ifelse(!is.null(event.type),paste("--event-type",event.type),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.spot.fleet.requests <- function (dry.run=FALSE,no.dry.run=FALSE,spot.fleet.request.ids=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-spot-fleet-requests",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(spot.fleet.request.ids),paste("--spot-fleet-request-ids",spot.fleet.request.ids),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.spot.instance.requests <- function (dry.run=FALSE,no.dry.run=FALSE,spot.instance.request.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-spot-instance-requests",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(spot.instance.request.ids),paste("--spot-instance-request-ids",spot.instance.request.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.spot.price.history <- function (dry.run=FALSE,no.dry.run=FALSE,start.time=NULL,end.time=NULL,instance.types=NULL,product.descriptions=NULL,filters=NULL,availability.zone=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-spot-price-history",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(instance.types),paste("--instance-types",instance.types),""),
                 ifelse(!is.null(product.descriptions),paste("--product-descriptions",product.descriptions),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(availability.zone),paste("--availability-zone",availability.zone),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.subnets <- function (dry.run=FALSE,no.dry.run=FALSE,subnet.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-subnets",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(subnet.ids),paste("--subnet-ids",subnet.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.tags <- function (dry.run=FALSE,no.dry.run=FALSE,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-tags",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.volume.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,volume.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-volume-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.volume.status <- function (dry.run=FALSE,no.dry.run=FALSE,volume.ids=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-volume-status",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.ids),paste("--volume-ids",volume.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.volumes <- function (dry.run=FALSE,no.dry.run=FALSE,volume.ids=NULL,filters=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-volumes",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.ids),paste("--volume-ids",volume.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.vpc.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-vpc-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.vpc.classic.link <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-vpc-classic-link",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.ids),paste("--vpc-ids",vpc.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.vpc.endpoint.services <- function (dry.run=FALSE,no.dry.run=FALSE,max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-vpc-endpoint-services",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.vpc.endpoints <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.endpoint.ids=NULL,filters=NULL,max.results=NULL,next.token=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-vpc-endpoints",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.endpoint.ids),paste("--vpc-endpoint-ids",vpc.endpoint.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.vpc.peering.connections <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.peering.connection.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-vpc-peering-connections",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.peering.connection.ids),paste("--vpc-peering-connection-ids",vpc.peering.connection.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.vpcs <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-vpcs",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.ids),paste("--vpc-ids",vpc.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.vpn.connections <- function (dry.run=FALSE,no.dry.run=FALSE,vpn.connection.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-vpn-connections",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpn.connection.ids),paste("--vpn-connection-ids",vpn.connection.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.describe.vpn.gateways <- function (dry.run=FALSE,no.dry.run=FALSE,vpn.gateway.ids=NULL,filters=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 describe-vpn-gateways",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpn.gateway.ids),paste("--vpn-gateway-ids",vpn.gateway.ids),""),
                 ifelse(!is.null(filters),paste("--filters",filters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.detach.classic.link.vpc <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 detach-classic-link-vpc",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.detach.internet.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,internet.gateway.id=NULL,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 detach-internet-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(internet.gateway.id),paste("--internet-gateway-id",internet.gateway.id),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.detach.network.interface <- function (dry.run=FALSE,no.dry.run=FALSE,attachment.id=NULL,force=FALSE,no.force=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(force && no.force) stop("please set either force or no.force")
    cmd <- paste("aws ec2 detach-network-interface",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(attachment.id),paste("--attachment-id",attachment.id),""),
                 ifelse(force,"--force",""),
                 ifelse(no.force,"--no-force",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.detach.volume <- function (dry.run=FALSE,no.dry.run=FALSE,volume.id=NULL,instance.id=NULL,device=NULL,force=FALSE,no.force=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(force && no.force) stop("please set either force or no.force")
    cmd <- paste("aws ec2 detach-volume",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(device),paste("--device",device),""),
                 ifelse(force,"--force",""),
                 ifelse(no.force,"--no-force",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.detach.vpn.gateway <- function (dry.run=FALSE,no.dry.run=FALSE,vpn.gateway.id=NULL,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 detach-vpn-gateway",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpn.gateway.id),paste("--vpn-gateway-id",vpn.gateway.id),""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.disable.vgw.route.propagation <- function (route.table.id=NULL,gateway.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 disable-vgw-route-propagation",
                 ifelse(!is.null(route.table.id),paste("--route-table-id",route.table.id),""),
                 ifelse(!is.null(gateway.id),paste("--gateway-id",gateway.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.disable.vpc.classic.link <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 disable-vpc-classic-link",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.disassociate.address <- function (dry.run=FALSE,no.dry.run=FALSE,public.ip=NULL,association.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 disassociate-address",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(public.ip),paste("--public-ip",public.ip),""),
                 ifelse(!is.null(association.id),paste("--association-id",association.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.disassociate.route.table <- function (dry.run=FALSE,no.dry.run=FALSE,association.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 disassociate-route-table",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(association.id),paste("--association-id",association.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.enable.vgw.route.propagation <- function (route.table.id=NULL,gateway.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 enable-vgw-route-propagation",
                 ifelse(!is.null(route.table.id),paste("--route-table-id",route.table.id),""),
                 ifelse(!is.null(gateway.id),paste("--gateway-id",gateway.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.enable.volume.io <- function (dry.run=FALSE,no.dry.run=FALSE,volume.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 enable-volume-io",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.enable.vpc.classic.link <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 enable-vpc-classic-link",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.get.console.output <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 get-console-output",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.get.password.data <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,priv.launch.key=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 get-password-data",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(priv.launch.key),paste("--priv-launch-key",priv.launch.key),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.import.image <- function (dry.run=FALSE,no.dry.run=FALSE,description=NULL,disk.containers=NULL,license.type=NULL,hypervisor=NULL,architecture=NULL,platform=NULL,client.data=NULL,client.token=NULL,role.name=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 import-image",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(disk.containers),paste("--disk-containers",disk.containers),""),
                 ifelse(!is.null(license.type),paste("--license-type",license.type),""),
                 ifelse(!is.null(hypervisor),paste("--hypervisor",hypervisor),""),
                 ifelse(!is.null(architecture),paste("--architecture",architecture),""),
                 ifelse(!is.null(platform),paste("--platform",platform),""),
                 ifelse(!is.null(client.data),paste("--client-data",client.data),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.import.key.pair <- function (dry.run=FALSE,no.dry.run=FALSE,key.name=NULL,public.key.material=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 import-key-pair",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(key.name),paste("--key-name",key.name),""),
                 ifelse(!is.null(public.key.material),paste("--public-key-material",public.key.material),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.import.snapshot <- function (dry.run=FALSE,no.dry.run=FALSE,description=NULL,disk.container=NULL,client.data=NULL,client.token=NULL,role.name=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 import-snapshot",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(disk.container),paste("--disk-container",disk.container),""),
                 ifelse(!is.null(client.data),paste("--client-data",client.data),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.hosts <- function (host.ids=NULL,auto.placement=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 modify-hosts",
                 ifelse(!is.null(host.ids),paste("--host-ids",host.ids),""),
                 ifelse(!is.null(auto.placement),paste("--auto-placement",auto.placement),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.id.format <- function (resource=NULL,use.long.ids=FALSE,no.use.long.ids=FALSE,cli.input.json=NULL) {
    if(use.long.ids && no.use.long.ids) stop("please set either use.long.ids or no.use.long.ids")
    cmd <- paste("aws ec2 modify-id-format",
                 ifelse(!is.null(resource),paste("--resource",resource),""),
                 ifelse(use.long.ids,"--use-long-ids",""),
                 ifelse(no.use.long.ids,"--no-use-long-ids",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.image.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,image.id=NULL,attribute=NULL,operation.type=NULL,user.ids=NULL,user.groups=NULL,product.codes=NULL,value=NULL,launch.permission=NULL,description=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 modify-image-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(image.id),paste("--image-id",image.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(operation.type),paste("--operation-type",operation.type),""),
                 ifelse(!is.null(user.ids),paste("--user-ids",user.ids),""),
                 ifelse(!is.null(user.groups),paste("--user-groups",user.groups),""),
                 ifelse(!is.null(product.codes),paste("--product-codes",product.codes),""),
                 ifelse(!is.null(value),paste("--value",value),""),
                 ifelse(!is.null(launch.permission),paste("--launch-permission",launch.permission),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.instance.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,attribute=NULL,value=NULL,block.device.mappings=NULL,source.dest.check=FALSE,no.source.dest.check=FALSE,disable.api.termination=FALSE,no.disable.api.termination=FALSE,instance.type=NULL,kernel=NULL,ramdisk=NULL,user.data=NULL,instance.initiated.shutdown.behavior=NULL,groups=NULL,ebs.optimized=FALSE,no.ebs.optimized=FALSE,sriov.net.support=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(source.dest.check && no.source.dest.check) stop("please set either source.dest.check or no.source.dest.check")
    if(disable.api.termination && no.disable.api.termination) stop("please set either disable.api.termination or no.disable.api.termination")
    if(ebs.optimized && no.ebs.optimized) stop("please set either ebs.optimized or no.ebs.optimized")
    cmd <- paste("aws ec2 modify-instance-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(value),paste("--value",value),""),
                 ifelse(!is.null(block.device.mappings),paste("--block-device-mappings",block.device.mappings),""),
                 ifelse(source.dest.check,"--source-dest-check",""),
                 ifelse(no.source.dest.check,"--no-source-dest-check",""),
                 ifelse(disable.api.termination,"--disable-api-termination",""),
                 ifelse(no.disable.api.termination,"--no-disable-api-termination",""),
                 ifelse(!is.null(instance.type),paste("--instance-type",instance.type),""),
                 ifelse(!is.null(kernel),paste("--kernel",kernel),""),
                 ifelse(!is.null(ramdisk),paste("--ramdisk",ramdisk),""),
                 ifelse(!is.null(user.data),paste("--user-data",user.data),""),
                 ifelse(!is.null(instance.initiated.shutdown.behavior),paste("--instance-initiated-shutdown-behavior",instance.initiated.shutdown.behavior),""),
                 ifelse(!is.null(groups),paste("--groups",groups),""),
                 ifelse(ebs.optimized,"--ebs-optimized",""),
                 ifelse(no.ebs.optimized,"--no-ebs-optimized",""),
                 ifelse(!is.null(sriov.net.support),paste("--sriov-net-support",sriov.net.support),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.instance.placement <- function (instance.id=NULL,tenancy=NULL,affinity=NULL,host.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 modify-instance-placement",
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(tenancy),paste("--tenancy",tenancy),""),
                 ifelse(!is.null(affinity),paste("--affinity",affinity),""),
                 ifelse(!is.null(host.id),paste("--host-id",host.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.network.interface.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,network.interface.id=NULL,description=NULL,source.dest.check=FALSE,no.source.dest.check=FALSE,groups=NULL,attachment=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(source.dest.check && no.source.dest.check) stop("please set either source.dest.check or no.source.dest.check")
    cmd <- paste("aws ec2 modify-network-interface-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(source.dest.check,"--source-dest-check",""),
                 ifelse(no.source.dest.check,"--no-source-dest-check",""),
                 ifelse(!is.null(groups),paste("--groups",groups),""),
                 ifelse(!is.null(attachment),paste("--attachment",attachment),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.reserved.instances <- function (client.token=NULL,reserved.instances.ids=NULL,target.configurations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 modify-reserved-instances",
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(reserved.instances.ids),paste("--reserved-instances-ids",reserved.instances.ids),""),
                 ifelse(!is.null(target.configurations),paste("--target-configurations",target.configurations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.snapshot.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,snapshot.id=NULL,attribute=NULL,operation.type=NULL,user.ids=NULL,group.names=NULL,create.volume.permission=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 modify-snapshot-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(operation.type),paste("--operation-type",operation.type),""),
                 ifelse(!is.null(user.ids),paste("--user-ids",user.ids),""),
                 ifelse(!is.null(group.names),paste("--group-names",group.names),""),
                 ifelse(!is.null(create.volume.permission),paste("--create-volume-permission",create.volume.permission),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.spot.fleet.request <- function (spot.fleet.request.id=NULL,target.capacity=NULL,excess.capacity.termination.policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 modify-spot-fleet-request",
                 ifelse(!is.null(spot.fleet.request.id),paste("--spot-fleet-request-id",spot.fleet.request.id),""),
                 ifelse(!is.null(target.capacity),paste("--target-capacity",target.capacity),""),
                 ifelse(!is.null(excess.capacity.termination.policy),paste("--excess-capacity-termination-policy",excess.capacity.termination.policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.subnet.attribute <- function (subnet.id=NULL,map.public.ip.on.launch=FALSE,no.map.public.ip.on.launch=FALSE,cli.input.json=NULL) {
    if(map.public.ip.on.launch && no.map.public.ip.on.launch) stop("please set either map.public.ip.on.launch or no.map.public.ip.on.launch")
    cmd <- paste("aws ec2 modify-subnet-attribute",
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(map.public.ip.on.launch,"--map-public-ip-on-launch",""),
                 ifelse(no.map.public.ip.on.launch,"--no-map-public-ip-on-launch",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.volume.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,volume.id=NULL,auto.enable.io=FALSE,no.auto.enable.io=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(auto.enable.io && no.auto.enable.io) stop("please set either auto.enable.io or no.auto.enable.io")
    cmd <- paste("aws ec2 modify-volume-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(volume.id),paste("--volume-id",volume.id),""),
                 ifelse(auto.enable.io,"--auto-enable-io",""),
                 ifelse(no.auto.enable.io,"--no-auto-enable-io",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.vpc.attribute <- function (vpc.id=NULL,enable.dns.support=FALSE,no.enable.dns.support=FALSE,enable.dns.hostnames=FALSE,no.enable.dns.hostnames=FALSE,cli.input.json=NULL) {
    if(enable.dns.support && no.enable.dns.support) stop("please set either enable.dns.support or no.enable.dns.support")
    if(enable.dns.hostnames && no.enable.dns.hostnames) stop("please set either enable.dns.hostnames or no.enable.dns.hostnames")
    cmd <- paste("aws ec2 modify-vpc-attribute",
                 ifelse(!is.null(vpc.id),paste("--vpc-id",vpc.id),""),
                 ifelse(enable.dns.support,"--enable-dns-support",""),
                 ifelse(no.enable.dns.support,"--no-enable-dns-support",""),
                 ifelse(enable.dns.hostnames,"--enable-dns-hostnames",""),
                 ifelse(no.enable.dns.hostnames,"--no-enable-dns-hostnames",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.modify.vpc.endpoint <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.endpoint.id=NULL,reset.policy=FALSE,no.reset.policy=FALSE,policy.document=NULL,add.route.table.ids=NULL,remove.route.table.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(reset.policy && no.reset.policy) stop("please set either reset.policy or no.reset.policy")
    cmd <- paste("aws ec2 modify-vpc-endpoint",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.endpoint.id),paste("--vpc-endpoint-id",vpc.endpoint.id),""),
                 ifelse(reset.policy,"--reset-policy",""),
                 ifelse(no.reset.policy,"--no-reset-policy",""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(!is.null(add.route.table.ids),paste("--add-route-table-ids",add.route.table.ids),""),
                 ifelse(!is.null(remove.route.table.ids),paste("--remove-route-table-ids",remove.route.table.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.monitor.instances <- function (dry.run=FALSE,no.dry.run=FALSE,instance.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 monitor-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.move.address.to.vpc <- function (dry.run=FALSE,no.dry.run=FALSE,public.ip=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 move-address-to-vpc",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(public.ip),paste("--public-ip",public.ip),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.purchase.reserved.instances.offering <- function (dry.run=FALSE,no.dry.run=FALSE,reserved.instances.offering.id=NULL,instance.count=NULL,limit.price=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 purchase-reserved-instances-offering",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(reserved.instances.offering.id),paste("--reserved-instances-offering-id",reserved.instances.offering.id),""),
                 ifelse(!is.null(instance.count),paste("--instance-count",instance.count),""),
                 ifelse(!is.null(limit.price),paste("--limit-price",limit.price),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.reboot.instances <- function (dry.run=FALSE,no.dry.run=FALSE,instance.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 reboot-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.register.image <- function (dry.run=FALSE,no.dry.run=FALSE,image.location=NULL,name=NULL,description=NULL,architecture=NULL,kernel.id=NULL,ramdisk.id=NULL,root.device.name=NULL,block.device.mappings=NULL,virtualization.type=NULL,sriov.net.support=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 register-image",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(image.location),paste("--image-location",image.location),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(architecture),paste("--architecture",architecture),""),
                 ifelse(!is.null(kernel.id),paste("--kernel-id",kernel.id),""),
                 ifelse(!is.null(ramdisk.id),paste("--ramdisk-id",ramdisk.id),""),
                 ifelse(!is.null(root.device.name),paste("--root-device-name",root.device.name),""),
                 ifelse(!is.null(block.device.mappings),paste("--block-device-mappings",block.device.mappings),""),
                 ifelse(!is.null(virtualization.type),paste("--virtualization-type",virtualization.type),""),
                 ifelse(!is.null(sriov.net.support),paste("--sriov-net-support",sriov.net.support),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.reject.vpc.peering.connection <- function (dry.run=FALSE,no.dry.run=FALSE,vpc.peering.connection.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 reject-vpc-peering-connection",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(vpc.peering.connection.id),paste("--vpc-peering-connection-id",vpc.peering.connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.release.address <- function (dry.run=FALSE,no.dry.run=FALSE,public.ip=NULL,allocation.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 release-address",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(public.ip),paste("--public-ip",public.ip),""),
                 ifelse(!is.null(allocation.id),paste("--allocation-id",allocation.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.release.hosts <- function (host.ids=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 release-hosts",
                 ifelse(!is.null(host.ids),paste("--host-ids",host.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.replace.network.acl.association <- function (dry.run=FALSE,no.dry.run=FALSE,association.id=NULL,network.acl.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 replace-network-acl-association",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(association.id),paste("--association-id",association.id),""),
                 ifelse(!is.null(network.acl.id),paste("--network-acl-id",network.acl.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.replace.network.acl.entry <- function (dry.run=FALSE,no.dry.run=FALSE,network.acl.id=NULL,rule.number=NULL,protocol=NULL,rule.action=NULL,egress=FALSE,ingress=FALSE,cidr.block=NULL,icmp.type.code=NULL,port.range=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(egress && ingress) stop("please set either egress or ingress")
    cmd <- paste("aws ec2 replace-network-acl-entry",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.acl.id),paste("--network-acl-id",network.acl.id),""),
                 ifelse(!is.null(rule.number),paste("--rule-number",rule.number),""),
                 ifelse(!is.null(protocol),paste("--protocol",protocol),""),
                 ifelse(!is.null(rule.action),paste("--rule-action",rule.action),""),
                 ifelse(egress,"--egress",""),
                 ifelse(ingress,"--ingress",""),
                 ifelse(!is.null(cidr.block),paste("--cidr-block",cidr.block),""),
                 ifelse(!is.null(icmp.type.code),paste("--icmp-type-code",icmp.type.code),""),
                 ifelse(!is.null(port.range),paste("--port-range",port.range),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.replace.route <- function (dry.run=FALSE,no.dry.run=FALSE,route.table.id=NULL,destination.cidr.block=NULL,gateway.id=NULL,instance.id=NULL,network.interface.id=NULL,vpc.peering.connection.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 replace-route",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(route.table.id),paste("--route-table-id",route.table.id),""),
                 ifelse(!is.null(destination.cidr.block),paste("--destination-cidr-block",destination.cidr.block),""),
                 ifelse(!is.null(gateway.id),paste("--gateway-id",gateway.id),""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(vpc.peering.connection.id),paste("--vpc-peering-connection-id",vpc.peering.connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.replace.route.table.association <- function (dry.run=FALSE,no.dry.run=FALSE,association.id=NULL,route.table.id=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 replace-route-table-association",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(association.id),paste("--association-id",association.id),""),
                 ifelse(!is.null(route.table.id),paste("--route-table-id",route.table.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.report.instance.status <- function (dry.run=FALSE,no.dry.run=FALSE,instances=NULL,status=NULL,start.time=NULL,end.time=NULL,reason.codes=NULL,description=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 report-instance-status",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instances),paste("--instances",instances),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(start.time),paste("--start-time",start.time),""),
                 ifelse(!is.null(end.time),paste("--end-time",end.time),""),
                 ifelse(!is.null(reason.codes),paste("--reason-codes",reason.codes),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.request.spot.fleet <- function (dry.run=FALSE,no.dry.run=FALSE,spot.fleet.request.config=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 request-spot-fleet",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(spot.fleet.request.config),paste("--spot-fleet-request-config",spot.fleet.request.config),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.request.spot.instances <- function (dry.run=FALSE,no.dry.run=FALSE,spot.price=NULL,client.token=NULL,instance.count=NULL,type=NULL,valid.from=NULL,valid.until=NULL,launch.group=NULL,availability.zone.group=NULL,block.duration.minutes=NULL,launch.specification=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 request-spot-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(spot.price),paste("--spot-price",spot.price),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(instance.count),paste("--instance-count",instance.count),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(valid.from),paste("--valid-from",valid.from),""),
                 ifelse(!is.null(valid.until),paste("--valid-until",valid.until),""),
                 ifelse(!is.null(launch.group),paste("--launch-group",launch.group),""),
                 ifelse(!is.null(availability.zone.group),paste("--availability-zone-group",availability.zone.group),""),
                 ifelse(!is.null(block.duration.minutes),paste("--block-duration-minutes",block.duration.minutes),""),
                 ifelse(!is.null(launch.specification),paste("--launch-specification",launch.specification),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.reset.image.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,image.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 reset-image-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(image.id),paste("--image-id",image.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.reset.instance.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,instance.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 reset-instance-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.id),paste("--instance-id",instance.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.reset.network.interface.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,network.interface.id=NULL,source.dest.check=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 reset-network-interface-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(source.dest.check),paste("--source-dest-check",source.dest.check),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.reset.snapshot.attribute <- function (dry.run=FALSE,no.dry.run=FALSE,snapshot.id=NULL,attribute=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 reset-snapshot-attribute",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(!is.null(attribute),paste("--attribute",attribute),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.restore.address.to.classic <- function (dry.run=FALSE,no.dry.run=FALSE,public.ip=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 restore-address-to-classic",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(public.ip),paste("--public-ip",public.ip),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.revoke.security.group.egress <- function (dry.run=FALSE,no.dry.run=FALSE,group.id=NULL,ip.permissions=NULL,protocol=NULL,port=NULL,cidr=NULL,source.group=NULL,group.owner=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 revoke-security-group-egress",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.id),paste("--group-id",group.id),""),
                 ifelse(!is.null(ip.permissions),paste("--ip-permissions",ip.permissions),""),
                 ifelse(!is.null(protocol),paste("--protocol",protocol),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(cidr),paste("--cidr",cidr),""),
                 ifelse(!is.null(source.group),paste("--source-group",source.group),""),
                 ifelse(!is.null(group.owner),paste("--group-owner",group.owner),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.revoke.security.group.ingress <- function (dry.run=FALSE,no.dry.run=FALSE,group.name=NULL,group.id=NULL,ip.permissions=NULL,protocol=NULL,port=NULL,cidr=NULL,source.group=NULL,group.owner=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 revoke-security-group-ingress",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(group.id),paste("--group-id",group.id),""),
                 ifelse(!is.null(ip.permissions),paste("--ip-permissions",ip.permissions),""),
                 ifelse(!is.null(protocol),paste("--protocol",protocol),""),
                 ifelse(!is.null(port),paste("--port",port),""),
                 ifelse(!is.null(cidr),paste("--cidr",cidr),""),
                 ifelse(!is.null(source.group),paste("--source-group",source.group),""),
                 ifelse(!is.null(group.owner),paste("--group-owner",group.owner),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.run.instances <- function (dry.run=FALSE,no.dry.run=FALSE,image.id=NULL,key.name=NULL,security.groups=NULL,security.group.ids=NULL,user.data=NULL,instance.type=NULL,placement=NULL,kernel.id=NULL,ramdisk.id=NULL,block.device.mappings=NULL,monitoring=NULL,subnet.id=NULL,disable.api.termination=FALSE,enable.api.termination=FALSE,instance.initiated.shutdown.behavior=NULL,private.ip.address=NULL,client.token=NULL,additional.info=NULL,network.interfaces=NULL,iam.instance.profile=NULL,ebs.optimized=FALSE,no.ebs.optimized=FALSE,count=NULL,secondary.private.ip.addresses=NULL,secondary.private.ip.address.count=NULL,associate.public.ip.address=FALSE,no.associate.public.ip.address=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(disable.api.termination && enable.api.termination) stop("please set either disable.api.termination or enable.api.termination")
    if(ebs.optimized && no.ebs.optimized) stop("please set either ebs.optimized or no.ebs.optimized")
    if(associate.public.ip.address && no.associate.public.ip.address) stop("please set either associate.public.ip.address or no.associate.public.ip.address")
    cmd <- paste("aws ec2 run-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(image.id),paste("--image-id",image.id),""),
                 ifelse(!is.null(key.name),paste("--key-name",key.name),""),
                 ifelse(!is.null(security.groups),paste("--security-groups",security.groups),""),
                 ifelse(!is.null(security.group.ids),paste("--security-group-ids",security.group.ids),""),
                 ifelse(!is.null(user.data),paste("--user-data",user.data),""),
                 ifelse(!is.null(instance.type),paste("--instance-type",instance.type),""),
                 ifelse(!is.null(placement),paste("--placement",placement),""),
                 ifelse(!is.null(kernel.id),paste("--kernel-id",kernel.id),""),
                 ifelse(!is.null(ramdisk.id),paste("--ramdisk-id",ramdisk.id),""),
                 ifelse(!is.null(block.device.mappings),paste("--block-device-mappings",block.device.mappings),""),
                 ifelse(!is.null(monitoring),paste("--monitoring",monitoring),""),
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(disable.api.termination,"--disable-api-termination",""),
                 ifelse(enable.api.termination,"--enable-api-termination",""),
                 ifelse(!is.null(instance.initiated.shutdown.behavior),paste("--instance-initiated-shutdown-behavior",instance.initiated.shutdown.behavior),""),
                 ifelse(!is.null(private.ip.address),paste("--private-ip-address",private.ip.address),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(additional.info),paste("--additional-info",additional.info),""),
                 ifelse(!is.null(network.interfaces),paste("--network-interfaces",network.interfaces),""),
                 ifelse(!is.null(iam.instance.profile),paste("--iam-instance-profile",iam.instance.profile),""),
                 ifelse(ebs.optimized,"--ebs-optimized",""),
                 ifelse(no.ebs.optimized,"--no-ebs-optimized",""),
                 ifelse(!is.null(count),paste("--count",count),""),
                 ifelse(!is.null(secondary.private.ip.addresses),paste("--secondary-private-ip-addresses",secondary.private.ip.addresses),""),
                 ifelse(!is.null(secondary.private.ip.address.count),paste("--secondary-private-ip-address-count",secondary.private.ip.address.count),""),
                 ifelse(associate.public.ip.address,"--associate-public-ip-address",""),
                 ifelse(no.associate.public.ip.address,"--no-associate-public-ip-address",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.start.instances <- function (instance.ids=NULL,additional.info=NULL,dry.run=FALSE,no.dry.run=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 start-instances",
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(additional.info),paste("--additional-info",additional.info),""),
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.stop.instances <- function (dry.run=FALSE,no.dry.run=FALSE,instance.ids=NULL,force=FALSE,no.force=FALSE,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    if(force && no.force) stop("please set either force or no.force")
    cmd <- paste("aws ec2 stop-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(force,"--force",""),
                 ifelse(no.force,"--no-force",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.terminate.instances <- function (dry.run=FALSE,no.dry.run=FALSE,instance.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 terminate-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.unassign.private.ip.addresses <- function (network.interface.id=NULL,private.ip.addresses=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ec2 unassign-private-ip-addresses",
                 ifelse(!is.null(network.interface.id),paste("--network-interface-id",network.interface.id),""),
                 ifelse(!is.null(private.ip.addresses),paste("--private-ip-addresses",private.ip.addresses),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ec2.unmonitor.instances <- function (dry.run=FALSE,no.dry.run=FALSE,instance.ids=NULL,cli.input.json=NULL) {
    if(dry.run && no.dry.run) stop("please set either dry.run or no.dry.run")
    cmd <- paste("aws ec2 unmonitor-instances",
                 ifelse(dry.run,"--dry-run",""),
                 ifelse(no.dry.run,"--no-dry-run",""),
                 ifelse(!is.null(instance.ids),paste("--instance-ids",instance.ids),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
