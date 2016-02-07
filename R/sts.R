sts.assume.role <- function (role.arn=NULL,role.session.name=NULL,policy=NULL,duration.seconds=NULL,external.id=NULL,serial.number=NULL,token.code=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sts assume-role",
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(!is.null(role.session.name),paste("--role-session-name",role.session.name),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(duration.seconds),paste("--duration-seconds",duration.seconds),""),
                 ifelse(!is.null(external.id),paste("--external-id",external.id),""),
                 ifelse(!is.null(serial.number),paste("--serial-number",serial.number),""),
                 ifelse(!is.null(token.code),paste("--token-code",token.code),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sts.assume.role.with.saml <- function (role.arn=NULL,principal.arn=NULL,saml.assertion=NULL,policy=NULL,duration.seconds=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sts assume-role-with-saml",
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(!is.null(principal.arn),paste("--principal-arn",principal.arn),""),
                 ifelse(!is.null(saml.assertion),paste("--saml-assertion",saml.assertion),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(duration.seconds),paste("--duration-seconds",duration.seconds),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sts.assume.role.with.web.identity <- function (role.arn=NULL,role.session.name=NULL,web.identity.token=NULL,provider.id=NULL,policy=NULL,duration.seconds=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sts assume-role-with-web-identity",
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(!is.null(role.session.name),paste("--role-session-name",role.session.name),""),
                 ifelse(!is.null(web.identity.token),paste("--web-identity-token",web.identity.token),""),
                 ifelse(!is.null(provider.id),paste("--provider-id",provider.id),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(duration.seconds),paste("--duration-seconds",duration.seconds),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sts.decode.authorization.message <- function (encoded.message=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sts decode-authorization-message",
                 ifelse(!is.null(encoded.message),paste("--encoded-message",encoded.message),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sts.get.federation.token <- function (name=NULL,policy=NULL,duration.seconds=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sts get-federation-token",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(duration.seconds),paste("--duration-seconds",duration.seconds),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sts.get.session.token <- function (duration.seconds=NULL,serial.number=NULL,token.code=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sts get-session-token",
                 ifelse(!is.null(duration.seconds),paste("--duration-seconds",duration.seconds),""),
                 ifelse(!is.null(serial.number),paste("--serial-number",serial.number),""),
                 ifelse(!is.null(token.code),paste("--token-code",token.code),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
