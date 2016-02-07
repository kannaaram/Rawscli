iam.add.client.id.to.open.id.connect.provider <- function (open.id.connect.provider.arn=NULL,client.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam add-client-id-to-open-id-connect-provider",
                 ifelse(!is.null(open.id.connect.provider.arn),paste("--open-id-connect-provider-arn",open.id.connect.provider.arn),""),
                 ifelse(!is.null(client.id),paste("--client-id",client.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.add.role.to.instance.profile <- function (instance.profile.name=NULL,role.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam add-role-to-instance-profile",
                 ifelse(!is.null(instance.profile.name),paste("--instance-profile-name",instance.profile.name),""),
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.add.user.to.group <- function (group.name=NULL,user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam add-user-to-group",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.attach.group.policy <- function (group.name=NULL,policy.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam attach-group-policy",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.attach.role.policy <- function (role.name=NULL,policy.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam attach-role-policy",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.attach.user.policy <- function (user.name=NULL,policy.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam attach-user-policy",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.change.password <- function (old.password=NULL,new.password=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam change-password",
                 ifelse(!is.null(old.password),paste("--old-password",old.password),""),
                 ifelse(!is.null(new.password),paste("--new-password",new.password),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.access.key <- function (user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-access-key",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.account.alias <- function (account.alias=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-account-alias",
                 ifelse(!is.null(account.alias),paste("--account-alias",account.alias),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.group <- function (path=NULL,group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-group",
                 ifelse(!is.null(path),paste("--path",path),""),
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.instance.profile <- function (instance.profile.name=NULL,path=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-instance-profile",
                 ifelse(!is.null(instance.profile.name),paste("--instance-profile-name",instance.profile.name),""),
                 ifelse(!is.null(path),paste("--path",path),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.login.profile <- function (user.name=NULL,password=NULL,password.reset.required=FALSE,no.password.reset.required=FALSE,cli.input.json=NULL) {
    if(password.reset.required && no.password.reset.required) stop("please set either password.reset.required or no.password.reset.required")
    cmd <- paste("aws iam create-login-profile",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(password),paste("--password",password),""),
                 ifelse(password.reset.required,"--password-reset-required",""),
                 ifelse(no.password.reset.required,"--no-password-reset-required",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.open.id.connect.provider <- function (url=NULL,client.id.list=NULL,thumbprint.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-open-id-connect-provider",
                 ifelse(!is.null(url),paste("--url",url),""),
                 ifelse(!is.null(client.id.list),paste("--client-id-list",client.id.list),""),
                 ifelse(!is.null(thumbprint.list),paste("--thumbprint-list",thumbprint.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.policy <- function (policy.name=NULL,path=NULL,policy.document=NULL,description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-policy",
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(path),paste("--path",path),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.policy.version <- function (policy.arn=NULL,policy.document=NULL,set.as.default=FALSE,no.set.as.default=FALSE,cli.input.json=NULL) {
    if(set.as.default && no.set.as.default) stop("please set either set.as.default or no.set.as.default")
    cmd <- paste("aws iam create-policy-version",
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(set.as.default,"--set-as-default",""),
                 ifelse(no.set.as.default,"--no-set-as-default",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.role <- function (path=NULL,role.name=NULL,assume.role.policy.document=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-role",
                 ifelse(!is.null(path),paste("--path",path),""),
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(assume.role.policy.document),paste("--assume-role-policy-document",assume.role.policy.document),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.saml.provider <- function (saml.metadata.document=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-saml-provider",
                 ifelse(!is.null(saml.metadata.document),paste("--saml-metadata-document",saml.metadata.document),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.user <- function (path=NULL,user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam create-user",
                 ifelse(!is.null(path),paste("--path",path),""),
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.create.virtual.mfa.device <- function (path=NULL,virtual.mfa.device.name=NULL,outfile=NULL,bootstrap.method=NULL) {
    cmd <- paste("aws iam create-virtual-mfa-device",
                 ifelse(!is.null(path),paste("--path",path),""),
                 ifelse(!is.null(virtual.mfa.device.name),paste("--virtual-mfa-device-name",virtual.mfa.device.name),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""),
                 ifelse(!is.null(bootstrap.method),paste("--bootstrap-method",bootstrap.method),""))
    system(cmd,intern=TRUE) 
}
iam.deactivate.mfa.device <- function (user.name=NULL,serial.number=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam deactivate-mfa-device",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(serial.number),paste("--serial-number",serial.number),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.access.key <- function (user.name=NULL,access.key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-access-key",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(access.key.id),paste("--access-key-id",access.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.account.alias <- function (account.alias=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-account-alias",
                 ifelse(!is.null(account.alias),paste("--account-alias",account.alias),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.account.password.policy <- function (cli.input.json=NULL) {
    cmd <- paste("aws iam delete-account-password-policy",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.group <- function (group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-group",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.group.policy <- function (group.name=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-group-policy",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.instance.profile <- function (instance.profile.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-instance-profile",
                 ifelse(!is.null(instance.profile.name),paste("--instance-profile-name",instance.profile.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.login.profile <- function (user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-login-profile",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.open.id.connect.provider <- function (open.id.connect.provider.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-open-id-connect-provider",
                 ifelse(!is.null(open.id.connect.provider.arn),paste("--open-id-connect-provider-arn",open.id.connect.provider.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.policy <- function (policy.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-policy",
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.policy.version <- function (policy.arn=NULL,version.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-policy-version",
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(version.id),paste("--version-id",version.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.role <- function (role.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-role",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.role.policy <- function (role.name=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-role-policy",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.saml.provider <- function (saml.provider.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-saml-provider",
                 ifelse(!is.null(saml.provider.arn),paste("--saml-provider-arn",saml.provider.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.server.certificate <- function (server.certificate.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-server-certificate",
                 ifelse(!is.null(server.certificate.name),paste("--server-certificate-name",server.certificate.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.signing.certificate <- function (user.name=NULL,certificate.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-signing-certificate",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.ssh.public.key <- function (user.name=NULL,ssh.public.key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-ssh-public-key",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(ssh.public.key.id),paste("--ssh-public-key-id",ssh.public.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.user <- function (user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-user",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.user.policy <- function (user.name=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-user-policy",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.delete.virtual.mfa.device <- function (serial.number=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam delete-virtual-mfa-device",
                 ifelse(!is.null(serial.number),paste("--serial-number",serial.number),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.detach.group.policy <- function (group.name=NULL,policy.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam detach-group-policy",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.detach.role.policy <- function (role.name=NULL,policy.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam detach-role-policy",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.detach.user.policy <- function (user.name=NULL,policy.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam detach-user-policy",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.enable.mfa.device <- function (user.name=NULL,serial.number=NULL,authentication.code.1=NULL,authentication.code.2=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam enable-mfa-device",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(serial.number),paste("--serial-number",serial.number),""),
                 ifelse(!is.null(authentication.code.1),paste("--authentication-code-1",authentication.code.1),""),
                 ifelse(!is.null(authentication.code.2),paste("--authentication-code-2",authentication.code.2),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.generate.credential.report <- function (cli.input.json=NULL) {
    cmd <- paste("aws iam generate-credential-report",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.access.key.last.used <- function (access.key.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-access-key-last-used",
                 ifelse(!is.null(access.key.id),paste("--access-key-id",access.key.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.account.authorization.details <- function (filter=NULL,max.items=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-account-authorization-details",
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.account.password.policy <- function (cli.input.json=NULL) {
    cmd <- paste("aws iam get-account-password-policy",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.account.summary <- function (cli.input.json=NULL) {
    cmd <- paste("aws iam get-account-summary",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.context.keys.for.custom.policy <- function (policy.input.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-context-keys-for-custom-policy",
                 ifelse(!is.null(policy.input.list),paste("--policy-input-list",policy.input.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.context.keys.for.principal.policy <- function (policy.source.arn=NULL,policy.input.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-context-keys-for-principal-policy",
                 ifelse(!is.null(policy.source.arn),paste("--policy-source-arn",policy.source.arn),""),
                 ifelse(!is.null(policy.input.list),paste("--policy-input-list",policy.input.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.credential.report <- function (cli.input.json=NULL) {
    cmd <- paste("aws iam get-credential-report",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.group <- function (group.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam get-group",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.get.group.policy <- function (group.name=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-group-policy",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.instance.profile <- function (instance.profile.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-instance-profile",
                 ifelse(!is.null(instance.profile.name),paste("--instance-profile-name",instance.profile.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.login.profile <- function (user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-login-profile",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.open.id.connect.provider <- function (open.id.connect.provider.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-open-id-connect-provider",
                 ifelse(!is.null(open.id.connect.provider.arn),paste("--open-id-connect-provider-arn",open.id.connect.provider.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.policy <- function (policy.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-policy",
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.policy.version <- function (policy.arn=NULL,version.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-policy-version",
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(version.id),paste("--version-id",version.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.role <- function (role.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-role",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.role.policy <- function (role.name=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-role-policy",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.saml.provider <- function (saml.provider.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-saml-provider",
                 ifelse(!is.null(saml.provider.arn),paste("--saml-provider-arn",saml.provider.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.server.certificate <- function (server.certificate.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-server-certificate",
                 ifelse(!is.null(server.certificate.name),paste("--server-certificate-name",server.certificate.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.ssh.public.key <- function (user.name=NULL,ssh.public.key.id=NULL,encoding=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-ssh-public-key",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(ssh.public.key.id),paste("--ssh-public-key-id",ssh.public.key.id),""),
                 ifelse(!is.null(encoding),paste("--encoding",encoding),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.user <- function (user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-user",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.get.user.policy <- function (user.name=NULL,policy.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam get-user-policy",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.list.access.keys <- function (user.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-access-keys",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.account.aliases <- function (max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-account-aliases",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.attached.group.policies <- function (group.name=NULL,path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-attached-group-policies",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.attached.role.policies <- function (role.name=NULL,path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-attached-role-policies",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.attached.user.policies <- function (user.name=NULL,path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-attached-user-policies",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.entities.for.policy <- function (policy.arn=NULL,entity.filter=NULL,path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-entities-for-policy",
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(entity.filter),paste("--entity-filter",entity.filter),""),
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.group.policies <- function (group.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-group-policies",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.groups <- function (path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-groups",
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.groups.for.user <- function (user.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-groups-for-user",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.instance.profiles <- function (path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-instance-profiles",
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.instance.profiles.for.role <- function (role.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-instance-profiles-for-role",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.mfa.devices <- function (user.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-mfa-devices",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.open.id.connect.providers <- function (cli.input.json=NULL) {
    cmd <- paste("aws iam list-open-id-connect-providers",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.list.policies <- function (scope=NULL,only.attached=FALSE,no.only.attached=FALSE,path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    if(only.attached && no.only.attached) stop("please set either only.attached or no.only.attached")
    cmd <- paste("aws iam list-policies",
                 ifelse(!is.null(scope),paste("--scope",scope),""),
                 ifelse(only.attached,"--only-attached",""),
                 ifelse(no.only.attached,"--no-only-attached",""),
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.policy.versions <- function (policy.arn=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-policy-versions",
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.role.policies <- function (role.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-role-policies",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.roles <- function (path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-roles",
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.saml.providers <- function (cli.input.json=NULL) {
    cmd <- paste("aws iam list-saml-providers",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.list.server.certificates <- function (path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-server-certificates",
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.signing.certificates <- function (user.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-signing-certificates",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.ssh.public.keys <- function (user.name=NULL,marker=NULL,max.items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam list-ssh-public-keys",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.list.user.policies <- function (user.name=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-user-policies",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.users <- function (path.prefix=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-users",
                 ifelse(!is.null(path.prefix),paste("--path-prefix",path.prefix),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.list.virtual.mfa.devices <- function (assignment.status=NULL,max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws iam list-virtual-mfa-devices",
                 ifelse(!is.null(assignment.status),paste("--assignment-status",assignment.status),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
iam.put.group.policy <- function (group.name=NULL,policy.name=NULL,policy.document=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam put-group-policy",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.put.role.policy <- function (role.name=NULL,policy.name=NULL,policy.document=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam put-role-policy",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.put.user.policy <- function (user.name=NULL,policy.name=NULL,policy.document=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam put-user-policy",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(policy.name),paste("--policy-name",policy.name),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.remove.client.id.from.open.id.connect.provider <- function (open.id.connect.provider.arn=NULL,client.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam remove-client-id-from-open-id-connect-provider",
                 ifelse(!is.null(open.id.connect.provider.arn),paste("--open-id-connect-provider-arn",open.id.connect.provider.arn),""),
                 ifelse(!is.null(client.id),paste("--client-id",client.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.remove.role.from.instance.profile <- function (instance.profile.name=NULL,role.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam remove-role-from-instance-profile",
                 ifelse(!is.null(instance.profile.name),paste("--instance-profile-name",instance.profile.name),""),
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.remove.user.from.group <- function (group.name=NULL,user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam remove-user-from-group",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.resync.mfa.device <- function (user.name=NULL,serial.number=NULL,authentication.code.1=NULL,authentication.code.2=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam resync-mfa-device",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(serial.number),paste("--serial-number",serial.number),""),
                 ifelse(!is.null(authentication.code.1),paste("--authentication-code-1",authentication.code.1),""),
                 ifelse(!is.null(authentication.code.2),paste("--authentication-code-2",authentication.code.2),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.set.default.policy.version <- function (policy.arn=NULL,version.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam set-default-policy-version",
                 ifelse(!is.null(policy.arn),paste("--policy-arn",policy.arn),""),
                 ifelse(!is.null(version.id),paste("--version-id",version.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.simulate.custom.policy <- function (policy.input.list=NULL,action.names=NULL,resource.arns=NULL,resource.policy=NULL,resource.owner=NULL,caller.arn=NULL,context.entries=NULL,resource.handling.option=NULL,max.items=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam simulate-custom-policy",
                 ifelse(!is.null(policy.input.list),paste("--policy-input-list",policy.input.list),""),
                 ifelse(!is.null(action.names),paste("--action-names",action.names),""),
                 ifelse(!is.null(resource.arns),paste("--resource-arns",resource.arns),""),
                 ifelse(!is.null(resource.policy),paste("--resource-policy",resource.policy),""),
                 ifelse(!is.null(resource.owner),paste("--resource-owner",resource.owner),""),
                 ifelse(!is.null(caller.arn),paste("--caller-arn",caller.arn),""),
                 ifelse(!is.null(context.entries),paste("--context-entries",context.entries),""),
                 ifelse(!is.null(resource.handling.option),paste("--resource-handling-option",resource.handling.option),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.simulate.principal.policy <- function (policy.source.arn=NULL,policy.input.list=NULL,action.names=NULL,resource.arns=NULL,resource.policy=NULL,resource.owner=NULL,caller.arn=NULL,context.entries=NULL,resource.handling.option=NULL,max.items=NULL,marker=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam simulate-principal-policy",
                 ifelse(!is.null(policy.source.arn),paste("--policy-source-arn",policy.source.arn),""),
                 ifelse(!is.null(policy.input.list),paste("--policy-input-list",policy.input.list),""),
                 ifelse(!is.null(action.names),paste("--action-names",action.names),""),
                 ifelse(!is.null(resource.arns),paste("--resource-arns",resource.arns),""),
                 ifelse(!is.null(resource.policy),paste("--resource-policy",resource.policy),""),
                 ifelse(!is.null(resource.owner),paste("--resource-owner",resource.owner),""),
                 ifelse(!is.null(caller.arn),paste("--caller-arn",caller.arn),""),
                 ifelse(!is.null(context.entries),paste("--context-entries",context.entries),""),
                 ifelse(!is.null(resource.handling.option),paste("--resource-handling-option",resource.handling.option),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.access.key <- function (user.name=NULL,access.key.id=NULL,status=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-access-key",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(access.key.id),paste("--access-key-id",access.key.id),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.account.password.policy <- function (minimum.password.length=NULL,require.symbols=FALSE,no.require.symbols=FALSE,require.numbers=FALSE,no.require.numbers=FALSE,require.uppercase.characters=FALSE,no.require.uppercase.characters=FALSE,require.lowercase.characters=FALSE,no.require.lowercase.characters=FALSE,allow.users.to.change.password=FALSE,no.allow.users.to.change.password=FALSE,max.password.age=NULL,password.reuse.prevention=NULL,hard.expiry=FALSE,no.hard.expiry=FALSE,cli.input.json=NULL) {
    if(require.symbols && no.require.symbols) stop("please set either require.symbols or no.require.symbols")
    if(require.numbers && no.require.numbers) stop("please set either require.numbers or no.require.numbers")
    if(require.uppercase.characters && no.require.uppercase.characters) stop("please set either require.uppercase.characters or no.require.uppercase.characters")
    if(require.lowercase.characters && no.require.lowercase.characters) stop("please set either require.lowercase.characters or no.require.lowercase.characters")
    if(allow.users.to.change.password && no.allow.users.to.change.password) stop("please set either allow.users.to.change.password or no.allow.users.to.change.password")
    if(hard.expiry && no.hard.expiry) stop("please set either hard.expiry or no.hard.expiry")
    cmd <- paste("aws iam update-account-password-policy",
                 ifelse(!is.null(minimum.password.length),paste("--minimum-password-length",minimum.password.length),""),
                 ifelse(require.symbols,"--require-symbols",""),
                 ifelse(no.require.symbols,"--no-require-symbols",""),
                 ifelse(require.numbers,"--require-numbers",""),
                 ifelse(no.require.numbers,"--no-require-numbers",""),
                 ifelse(require.uppercase.characters,"--require-uppercase-characters",""),
                 ifelse(no.require.uppercase.characters,"--no-require-uppercase-characters",""),
                 ifelse(require.lowercase.characters,"--require-lowercase-characters",""),
                 ifelse(no.require.lowercase.characters,"--no-require-lowercase-characters",""),
                 ifelse(allow.users.to.change.password,"--allow-users-to-change-password",""),
                 ifelse(no.allow.users.to.change.password,"--no-allow-users-to-change-password",""),
                 ifelse(!is.null(max.password.age),paste("--max-password-age",max.password.age),""),
                 ifelse(!is.null(password.reuse.prevention),paste("--password-reuse-prevention",password.reuse.prevention),""),
                 ifelse(hard.expiry,"--hard-expiry",""),
                 ifelse(no.hard.expiry,"--no-hard-expiry",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.assume.role.policy <- function (role.name=NULL,policy.document=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-assume-role-policy",
                 ifelse(!is.null(role.name),paste("--role-name",role.name),""),
                 ifelse(!is.null(policy.document),paste("--policy-document",policy.document),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.group <- function (group.name=NULL,new.path=NULL,new.group.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-group",
                 ifelse(!is.null(group.name),paste("--group-name",group.name),""),
                 ifelse(!is.null(new.path),paste("--new-path",new.path),""),
                 ifelse(!is.null(new.group.name),paste("--new-group-name",new.group.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.login.profile <- function (user.name=NULL,password=NULL,password.reset.required=FALSE,no.password.reset.required=FALSE,cli.input.json=NULL) {
    if(password.reset.required && no.password.reset.required) stop("please set either password.reset.required or no.password.reset.required")
    cmd <- paste("aws iam update-login-profile",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(password),paste("--password",password),""),
                 ifelse(password.reset.required,"--password-reset-required",""),
                 ifelse(no.password.reset.required,"--no-password-reset-required",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.open.id.connect.provider.thumbprint <- function (open.id.connect.provider.arn=NULL,thumbprint.list=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-open-id-connect-provider-thumbprint",
                 ifelse(!is.null(open.id.connect.provider.arn),paste("--open-id-connect-provider-arn",open.id.connect.provider.arn),""),
                 ifelse(!is.null(thumbprint.list),paste("--thumbprint-list",thumbprint.list),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.saml.provider <- function (saml.metadata.document=NULL,saml.provider.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-saml-provider",
                 ifelse(!is.null(saml.metadata.document),paste("--saml-metadata-document",saml.metadata.document),""),
                 ifelse(!is.null(saml.provider.arn),paste("--saml-provider-arn",saml.provider.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.server.certificate <- function (server.certificate.name=NULL,new.path=NULL,new.server.certificate.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-server-certificate",
                 ifelse(!is.null(server.certificate.name),paste("--server-certificate-name",server.certificate.name),""),
                 ifelse(!is.null(new.path),paste("--new-path",new.path),""),
                 ifelse(!is.null(new.server.certificate.name),paste("--new-server-certificate-name",new.server.certificate.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.signing.certificate <- function (user.name=NULL,certificate.id=NULL,status=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-signing-certificate",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(certificate.id),paste("--certificate-id",certificate.id),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.ssh.public.key <- function (user.name=NULL,ssh.public.key.id=NULL,status=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-ssh-public-key",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(ssh.public.key.id),paste("--ssh-public-key-id",ssh.public.key.id),""),
                 ifelse(!is.null(status),paste("--status",status),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.update.user <- function (user.name=NULL,new.path=NULL,new.user.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam update-user",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(new.path),paste("--new-path",new.path),""),
                 ifelse(!is.null(new.user.name),paste("--new-user-name",new.user.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.upload.server.certificate <- function (path=NULL,server.certificate.name=NULL,certificate.body=NULL,private.key=NULL,certificate.chain=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam upload-server-certificate",
                 ifelse(!is.null(path),paste("--path",path),""),
                 ifelse(!is.null(server.certificate.name),paste("--server-certificate-name",server.certificate.name),""),
                 ifelse(!is.null(certificate.body),paste("--certificate-body",certificate.body),""),
                 ifelse(!is.null(private.key),paste("--private-key",private.key),""),
                 ifelse(!is.null(certificate.chain),paste("--certificate-chain",certificate.chain),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.upload.signing.certificate <- function (user.name=NULL,certificate.body=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam upload-signing-certificate",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(certificate.body),paste("--certificate-body",certificate.body),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iam.upload.ssh.public.key <- function (user.name=NULL,ssh.public.key.body=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iam upload-ssh-public-key",
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(ssh.public.key.body),paste("--ssh-public-key-body",ssh.public.key.body),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
