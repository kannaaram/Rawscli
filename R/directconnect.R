directconnect.allocate.connection.on.interconnect <- function (bandwidth=NULL,connection.name=NULL,owner.account=NULL,interconnect.id=NULL,vlan=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect allocate-connection-on-interconnect",
                 ifelse(!is.null(bandwidth),paste("--bandwidth",bandwidth),""),
                 ifelse(!is.null(connection.name),paste("--connection-name",connection.name),""),
                 ifelse(!is.null(owner.account),paste("--owner-account",owner.account),""),
                 ifelse(!is.null(interconnect.id),paste("--interconnect-id",interconnect.id),""),
                 ifelse(!is.null(vlan),paste("--vlan",vlan),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.allocate.private.virtual.interface <- function (connection.id=NULL,owner.account=NULL,new.private.virtual.interface.allocation=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect allocate-private-virtual-interface",
                 ifelse(!is.null(connection.id),paste("--connection-id",connection.id),""),
                 ifelse(!is.null(owner.account),paste("--owner-account",owner.account),""),
                 ifelse(!is.null(new.private.virtual.interface.allocation),paste("--new-private-virtual-interface-allocation",new.private.virtual.interface.allocation),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.allocate.public.virtual.interface <- function (connection.id=NULL,owner.account=NULL,new.public.virtual.interface.allocation=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect allocate-public-virtual-interface",
                 ifelse(!is.null(connection.id),paste("--connection-id",connection.id),""),
                 ifelse(!is.null(owner.account),paste("--owner-account",owner.account),""),
                 ifelse(!is.null(new.public.virtual.interface.allocation),paste("--new-public-virtual-interface-allocation",new.public.virtual.interface.allocation),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.confirm.connection <- function (connection.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect confirm-connection",
                 ifelse(!is.null(connection.id),paste("--connection-id",connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.confirm.private.virtual.interface <- function (virtual.interface.id=NULL,virtual.gateway.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect confirm-private-virtual-interface",
                 ifelse(!is.null(virtual.interface.id),paste("--virtual-interface-id",virtual.interface.id),""),
                 ifelse(!is.null(virtual.gateway.id),paste("--virtual-gateway-id",virtual.gateway.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.confirm.public.virtual.interface <- function (virtual.interface.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect confirm-public-virtual-interface",
                 ifelse(!is.null(virtual.interface.id),paste("--virtual-interface-id",virtual.interface.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.create.connection <- function (location=NULL,bandwidth=NULL,connection.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect create-connection",
                 ifelse(!is.null(location),paste("--location",location),""),
                 ifelse(!is.null(bandwidth),paste("--bandwidth",bandwidth),""),
                 ifelse(!is.null(connection.name),paste("--connection-name",connection.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.create.interconnect <- function (interconnect.name=NULL,bandwidth=NULL,location=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect create-interconnect",
                 ifelse(!is.null(interconnect.name),paste("--interconnect-name",interconnect.name),""),
                 ifelse(!is.null(bandwidth),paste("--bandwidth",bandwidth),""),
                 ifelse(!is.null(location),paste("--location",location),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.create.private.virtual.interface <- function (connection.id=NULL,new.private.virtual.interface=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect create-private-virtual-interface",
                 ifelse(!is.null(connection.id),paste("--connection-id",connection.id),""),
                 ifelse(!is.null(new.private.virtual.interface),paste("--new-private-virtual-interface",new.private.virtual.interface),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.create.public.virtual.interface <- function (connection.id=NULL,new.public.virtual.interface=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect create-public-virtual-interface",
                 ifelse(!is.null(connection.id),paste("--connection-id",connection.id),""),
                 ifelse(!is.null(new.public.virtual.interface),paste("--new-public-virtual-interface",new.public.virtual.interface),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.delete.connection <- function (connection.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect delete-connection",
                 ifelse(!is.null(connection.id),paste("--connection-id",connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.delete.interconnect <- function (interconnect.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect delete-interconnect",
                 ifelse(!is.null(interconnect.id),paste("--interconnect-id",interconnect.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.delete.virtual.interface <- function (virtual.interface.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect delete-virtual-interface",
                 ifelse(!is.null(virtual.interface.id),paste("--virtual-interface-id",virtual.interface.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.describe.connections <- function (connection.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect describe-connections",
                 ifelse(!is.null(connection.id),paste("--connection-id",connection.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.describe.connections.on.interconnect <- function (interconnect.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect describe-connections-on-interconnect",
                 ifelse(!is.null(interconnect.id),paste("--interconnect-id",interconnect.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.describe.interconnects <- function (interconnect.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect describe-interconnects",
                 ifelse(!is.null(interconnect.id),paste("--interconnect-id",interconnect.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.describe.locations <- function (cli.input.json=NULL) {
    cmd <- paste("aws directconnect describe-locations",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.describe.virtual.gateways <- function (cli.input.json=NULL) {
    cmd <- paste("aws directconnect describe-virtual-gateways",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
directconnect.describe.virtual.interfaces <- function (connection.id=NULL,virtual.interface.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws directconnect describe-virtual-interfaces",
                 ifelse(!is.null(connection.id),paste("--connection-id",connection.id),""),
                 ifelse(!is.null(virtual.interface.id),paste("--virtual-interface-id",virtual.interface.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
