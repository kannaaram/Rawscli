route53domains.check.domain.availability <- function (domain.name=NULL,idn.lang.code=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains check-domain-availability",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(idn.lang.code),paste("--idn-lang-code",idn.lang.code),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.delete.tags.for.domain <- function (domain.name=NULL,tags.to.delete=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains delete-tags-for-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(tags.to.delete),paste("--tags-to-delete",tags.to.delete),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.disable.domain.auto.renew <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains disable-domain-auto-renew",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.disable.domain.transfer.lock <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains disable-domain-transfer-lock",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.enable.domain.auto.renew <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains enable-domain-auto-renew",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.enable.domain.transfer.lock <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains enable-domain-transfer-lock",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.get.domain.detail <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains get-domain-detail",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.get.operation.detail <- function (operation.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains get-operation-detail",
                 ifelse(!is.null(operation.id),paste("--operation-id",operation.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.list.domains <- function (max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws route53domains list-domains",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
route53domains.list.operations <- function (max.items=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL) {
    cmd <- paste("aws route53domains list-operations",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""))
    system(cmd,intern=TRUE) 
}
route53domains.list.tags.for.domain <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains list-tags-for-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.register.domain <- function (domain.name=NULL,idn.lang.code=NULL,duration.in.years=NULL,auto.renew=FALSE,no.auto.renew=FALSE,admin.contact=NULL,registrant.contact=NULL,tech.contact=NULL,privacy.protect.admin.contact=FALSE,no.privacy.protect.admin.contact=FALSE,privacy.protect.registrant.contact=FALSE,no.privacy.protect.registrant.contact=FALSE,privacy.protect.tech.contact=FALSE,no.privacy.protect.tech.contact=FALSE,cli.input.json=NULL) {
    if(auto.renew && no.auto.renew) stop("please set either auto.renew or no.auto.renew")
    if(privacy.protect.admin.contact && no.privacy.protect.admin.contact) stop("please set either privacy.protect.admin.contact or no.privacy.protect.admin.contact")
    if(privacy.protect.registrant.contact && no.privacy.protect.registrant.contact) stop("please set either privacy.protect.registrant.contact or no.privacy.protect.registrant.contact")
    if(privacy.protect.tech.contact && no.privacy.protect.tech.contact) stop("please set either privacy.protect.tech.contact or no.privacy.protect.tech.contact")
    cmd <- paste("aws route53domains register-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(idn.lang.code),paste("--idn-lang-code",idn.lang.code),""),
                 ifelse(!is.null(duration.in.years),paste("--duration-in-years",duration.in.years),""),
                 ifelse(auto.renew,"--auto-renew",""),
                 ifelse(no.auto.renew,"--no-auto-renew",""),
                 ifelse(!is.null(admin.contact),paste("--admin-contact",admin.contact),""),
                 ifelse(!is.null(registrant.contact),paste("--registrant-contact",registrant.contact),""),
                 ifelse(!is.null(tech.contact),paste("--tech-contact",tech.contact),""),
                 ifelse(privacy.protect.admin.contact,"--privacy-protect-admin-contact",""),
                 ifelse(no.privacy.protect.admin.contact,"--no-privacy-protect-admin-contact",""),
                 ifelse(privacy.protect.registrant.contact,"--privacy-protect-registrant-contact",""),
                 ifelse(no.privacy.protect.registrant.contact,"--no-privacy-protect-registrant-contact",""),
                 ifelse(privacy.protect.tech.contact,"--privacy-protect-tech-contact",""),
                 ifelse(no.privacy.protect.tech.contact,"--no-privacy-protect-tech-contact",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.retrieve.domain.auth.code <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains retrieve-domain-auth-code",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.transfer.domain <- function (domain.name=NULL,idn.lang.code=NULL,duration.in.years=NULL,nameservers=NULL,auth.code=NULL,auto.renew=FALSE,no.auto.renew=FALSE,admin.contact=NULL,registrant.contact=NULL,tech.contact=NULL,privacy.protect.admin.contact=FALSE,no.privacy.protect.admin.contact=FALSE,privacy.protect.registrant.contact=FALSE,no.privacy.protect.registrant.contact=FALSE,privacy.protect.tech.contact=FALSE,no.privacy.protect.tech.contact=FALSE,cli.input.json=NULL) {
    if(auto.renew && no.auto.renew) stop("please set either auto.renew or no.auto.renew")
    if(privacy.protect.admin.contact && no.privacy.protect.admin.contact) stop("please set either privacy.protect.admin.contact or no.privacy.protect.admin.contact")
    if(privacy.protect.registrant.contact && no.privacy.protect.registrant.contact) stop("please set either privacy.protect.registrant.contact or no.privacy.protect.registrant.contact")
    if(privacy.protect.tech.contact && no.privacy.protect.tech.contact) stop("please set either privacy.protect.tech.contact or no.privacy.protect.tech.contact")
    cmd <- paste("aws route53domains transfer-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(idn.lang.code),paste("--idn-lang-code",idn.lang.code),""),
                 ifelse(!is.null(duration.in.years),paste("--duration-in-years",duration.in.years),""),
                 ifelse(!is.null(nameservers),paste("--nameservers",nameservers),""),
                 ifelse(!is.null(auth.code),paste("--auth-code",auth.code),""),
                 ifelse(auto.renew,"--auto-renew",""),
                 ifelse(no.auto.renew,"--no-auto-renew",""),
                 ifelse(!is.null(admin.contact),paste("--admin-contact",admin.contact),""),
                 ifelse(!is.null(registrant.contact),paste("--registrant-contact",registrant.contact),""),
                 ifelse(!is.null(tech.contact),paste("--tech-contact",tech.contact),""),
                 ifelse(privacy.protect.admin.contact,"--privacy-protect-admin-contact",""),
                 ifelse(no.privacy.protect.admin.contact,"--no-privacy-protect-admin-contact",""),
                 ifelse(privacy.protect.registrant.contact,"--privacy-protect-registrant-contact",""),
                 ifelse(no.privacy.protect.registrant.contact,"--no-privacy-protect-registrant-contact",""),
                 ifelse(privacy.protect.tech.contact,"--privacy-protect-tech-contact",""),
                 ifelse(no.privacy.protect.tech.contact,"--no-privacy-protect-tech-contact",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.update.domain.contact <- function (domain.name=NULL,admin.contact=NULL,registrant.contact=NULL,tech.contact=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains update-domain-contact",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(admin.contact),paste("--admin-contact",admin.contact),""),
                 ifelse(!is.null(registrant.contact),paste("--registrant-contact",registrant.contact),""),
                 ifelse(!is.null(tech.contact),paste("--tech-contact",tech.contact),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.update.domain.contact.privacy <- function (domain.name=NULL,admin.privacy=FALSE,no.admin.privacy=FALSE,registrant.privacy=FALSE,no.registrant.privacy=FALSE,tech.privacy=FALSE,no.tech.privacy=FALSE,cli.input.json=NULL) {
    if(admin.privacy && no.admin.privacy) stop("please set either admin.privacy or no.admin.privacy")
    if(registrant.privacy && no.registrant.privacy) stop("please set either registrant.privacy or no.registrant.privacy")
    if(tech.privacy && no.tech.privacy) stop("please set either tech.privacy or no.tech.privacy")
    cmd <- paste("aws route53domains update-domain-contact-privacy",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(admin.privacy,"--admin-privacy",""),
                 ifelse(no.admin.privacy,"--no-admin-privacy",""),
                 ifelse(registrant.privacy,"--registrant-privacy",""),
                 ifelse(no.registrant.privacy,"--no-registrant-privacy",""),
                 ifelse(tech.privacy,"--tech-privacy",""),
                 ifelse(no.tech.privacy,"--no-tech-privacy",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.update.domain.nameservers <- function (domain.name=NULL,fi.auth.key=NULL,nameservers=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains update-domain-nameservers",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(fi.auth.key),paste("--fi-auth-key",fi.auth.key),""),
                 ifelse(!is.null(nameservers),paste("--nameservers",nameservers),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
route53domains.update.tags.for.domain <- function (domain.name=NULL,tags.to.update=NULL,cli.input.json=NULL) {
    cmd <- paste("aws route53domains update-tags-for-domain",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(tags.to.update),paste("--tags-to-update",tags.to.update),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
