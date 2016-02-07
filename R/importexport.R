importexport.cancel.job <- function (job.id=NULL,api.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws importexport cancel-job",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(api.version),paste("--api-version",api.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
importexport.create.job <- function (job.type=NULL,manifest=NULL,manifest.addendum=NULL,validate.only=FALSE,no.validate.only=FALSE,api.version=NULL,cli.input.json=NULL) {
    if(validate.only && no.validate.only) stop("please set either validate.only or no.validate.only")
    cmd <- paste("aws importexport create-job",
                 ifelse(!is.null(job.type),paste("--job-type",job.type),""),
                 ifelse(!is.null(manifest),paste("--manifest",manifest),""),
                 ifelse(!is.null(manifest.addendum),paste("--manifest-addendum",manifest.addendum),""),
                 ifelse(validate.only,"--validate-only",""),
                 ifelse(no.validate.only,"--no-validate-only",""),
                 ifelse(!is.null(api.version),paste("--api-version",api.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
importexport.get.shipping.label <- function (job.ids=NULL,name=NULL,company=NULL,phone.number=NULL,country=NULL,state.or.province=NULL,city=NULL,postal.code=NULL,street.1=NULL,street.2=NULL,street.3=NULL,api.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws importexport get-shipping-label",
                 ifelse(!is.null(job.ids),paste("--job-ids",job.ids),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(company),paste("--company",company),""),
                 ifelse(!is.null(phone.number),paste("--phone-number",phone.number),""),
                 ifelse(!is.null(country),paste("--country",country),""),
                 ifelse(!is.null(state.or.province),paste("--state-or-province",state.or.province),""),
                 ifelse(!is.null(city),paste("--city",city),""),
                 ifelse(!is.null(postal.code),paste("--postal-code",postal.code),""),
                 ifelse(!is.null(street.1),paste("--street-1",street.1),""),
                 ifelse(!is.null(street.2),paste("--street-2",street.2),""),
                 ifelse(!is.null(street.3),paste("--street-3",street.3),""),
                 ifelse(!is.null(api.version),paste("--api-version",api.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
importexport.get.status <- function (job.id=NULL,api.version=NULL,cli.input.json=NULL) {
    cmd <- paste("aws importexport get-status",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(api.version),paste("--api-version",api.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
importexport.list.jobs <- function (api.version=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws importexport list-jobs",
                 ifelse(!is.null(api.version),paste("--api-version",api.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
importexport.update.job <- function (job.id=NULL,manifest=NULL,job.type=NULL,validate.only=FALSE,no.validate.only=FALSE,api.version=NULL,cli.input.json=NULL) {
    if(validate.only && no.validate.only) stop("please set either validate.only or no.validate.only")
    cmd <- paste("aws importexport update-job",
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(manifest),paste("--manifest",manifest),""),
                 ifelse(!is.null(job.type),paste("--job-type",job.type),""),
                 ifelse(validate.only,"--validate-only",""),
                 ifelse(no.validate.only,"--no-validate-only",""),
                 ifelse(!is.null(api.version),paste("--api-version",api.version),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
