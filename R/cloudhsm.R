cloudhsm.create.hapg <- function (label=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm create-hapg",
                 ifelse(!is.null(label),paste("--label",label),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.create.hsm <- function (subnet.id=NULL,ssh.key=NULL,eni.ip=NULL,iam.role.arn=NULL,external.id=NULL,subscription.type=NULL,client.token=NULL,syslog.ip=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm create-hsm",
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(!is.null(ssh.key),paste("--ssh-key",ssh.key),""),
                 ifelse(!is.null(eni.ip),paste("--eni-ip",eni.ip),""),
                 ifelse(!is.null(iam.role.arn),paste("--iam-role-arn",iam.role.arn),""),
                 ifelse(!is.null(external.id),paste("--external-id",external.id),""),
                 ifelse(!is.null(subscription.type),paste("--subscription-type",subscription.type),""),
                 ifelse(!is.null(client.token),paste("--client-token",client.token),""),
                 ifelse(!is.null(syslog.ip),paste("--syslog-ip",syslog.ip),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.create.luna.client <- function (label=NULL,certificate=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm create-luna-client",
                 ifelse(!is.null(label),paste("--label",label),""),
                 ifelse(!is.null(certificate),paste("--certificate",certificate),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.delete.hapg <- function (hapg.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm delete-hapg",
                 ifelse(!is.null(hapg.arn),paste("--hapg-arn",hapg.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.delete.hsm <- function (hsm.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm delete-hsm",
                 ifelse(!is.null(hsm.arn),paste("--hsm-arn",hsm.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.delete.luna.client <- function (client.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm delete-luna-client",
                 ifelse(!is.null(client.arn),paste("--client-arn",client.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.describe.hapg <- function (hapg.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm describe-hapg",
                 ifelse(!is.null(hapg.arn),paste("--hapg-arn",hapg.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.describe.hsm <- function (hsm.arn=NULL,hsm.serial.number=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm describe-hsm",
                 ifelse(!is.null(hsm.arn),paste("--hsm-arn",hsm.arn),""),
                 ifelse(!is.null(hsm.serial.number),paste("--hsm-serial-number",hsm.serial.number),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.describe.luna.client <- function (client.arn=NULL,certificate.fingerprint=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm describe-luna-client",
                 ifelse(!is.null(client.arn),paste("--client-arn",client.arn),""),
                 ifelse(!is.null(certificate.fingerprint),paste("--certificate-fingerprint",certificate.fingerprint),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.get.config <- function (client.arn=NULL,client.version=NULL,hapg.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm get-config",
                 ifelse(!is.null(client.arn),paste("--client-arn",client.arn),""),
                 ifelse(!is.null(client.version),paste("--client-version",client.version),""),
                 ifelse(!is.null(hapg.list),paste("--hapg-list",hapg.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.list.available.zones <- function (cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm list-available-zones",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.list.hapgs <- function (next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm list-hapgs",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.list.hsms <- function (next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm list-hsms",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.list.luna.clients <- function (next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm list-luna-clients",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.modify.hapg <- function (hapg.arn=NULL,label=NULL,partition.serial.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm modify-hapg",
                 ifelse(!is.null(hapg.arn),paste("--hapg-arn",hapg.arn),""),
                 ifelse(!is.null(label),paste("--label",label),""),
                 ifelse(!is.null(partition.serial.list),paste("--partition-serial-list",partition.serial.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.modify.hsm <- function (hsm.arn=NULL,subnet.id=NULL,eni.ip=NULL,iam.role.arn=NULL,external.id=NULL,syslog.ip=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm modify-hsm",
                 ifelse(!is.null(hsm.arn),paste("--hsm-arn",hsm.arn),""),
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(!is.null(eni.ip),paste("--eni-ip",eni.ip),""),
                 ifelse(!is.null(iam.role.arn),paste("--iam-role-arn",iam.role.arn),""),
                 ifelse(!is.null(external.id),paste("--external-id",external.id),""),
                 ifelse(!is.null(syslog.ip),paste("--syslog-ip",syslog.ip),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
cloudhsm.modify.luna.client <- function (client.arn=NULL,certificate=NULL,cli.input.json=NULL) {
    cmd <- paste("aws cloudhsm modify-luna-client",
                 ifelse(!is.null(client.arn),paste("--client-arn",client.arn),""),
                 ifelse(!is.null(certificate),paste("--certificate",certificate),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
