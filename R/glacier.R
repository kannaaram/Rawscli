glacier.abort.multipart.upload <- function (account.id=NULL,vault.name=NULL,upload.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier abort-multipart-upload",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.abort.vault.lock <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier abort-vault-lock",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.add.tags.to.vault <- function (account.id=NULL,vault.name=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier add-tags-to-vault",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.complete.multipart.upload <- function (account.id=NULL,vault.name=NULL,upload.id=NULL,archive.size=NULL,checksum=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier complete-multipart-upload",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(archive.size),paste("--archive-size",archive.size),""),
                 ifelse(!is.null(checksum),paste("--checksum",checksum),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.complete.vault.lock <- function (account.id=NULL,vault.name=NULL,lock.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier complete-vault-lock",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(lock.id),paste("--lock-id",lock.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.create.vault <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier create-vault",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.delete.archive <- function (account.id=NULL,vault.name=NULL,archive.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier delete-archive",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(archive.id),paste("--archive-id",archive.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.delete.vault <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier delete-vault",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.delete.vault.access.policy <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier delete-vault-access-policy",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.delete.vault.notifications <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier delete-vault-notifications",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.describe.job <- function (account.id=NULL,vault.name=NULL,job.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier describe-job",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.describe.vault <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier describe-vault",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.get.data.retrieval.policy <- function (account.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier get-data-retrieval-policy",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.get.job.output <- function (account.id=NULL,vault.name=NULL,job.id=NULL,range=NULL,outfile=NULL) {
    cmd <- paste("aws glacier get-job-output",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(job.id),paste("--job-id",job.id),""),
                 ifelse(!is.null(range),paste("--range",range),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""))
    system(cmd,intern=TRUE) 
}
glacier.get.vault.access.policy <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier get-vault-access-policy",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.get.vault.lock <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier get-vault-lock",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.get.vault.notifications <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier get-vault-notifications",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.initiate.job <- function (account.id=NULL,vault.name=NULL,job.parameters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier initiate-job",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(job.parameters),paste("--job-parameters",job.parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.initiate.multipart.upload <- function (account.id=NULL,vault.name=NULL,archive.description=NULL,part.size=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier initiate-multipart-upload",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(archive.description),paste("--archive-description",archive.description),""),
                 ifelse(!is.null(part.size),paste("--part-size",part.size),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.initiate.vault.lock <- function (account.id=NULL,vault.name=NULL,policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier initiate-vault-lock",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.list.jobs <- function (account.id=NULL,vault.name=NULL,statuscode=NULL,completed=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws glacier list-jobs",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(statuscode),paste("--statuscode",statuscode),""),
                 ifelse(!is.null(completed),paste("--completed",completed),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
glacier.list.multipart.uploads <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws glacier list-multipart-uploads",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
glacier.list.parts <- function (account.id=NULL,vault.name=NULL,upload.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws glacier list-parts",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
glacier.list.tags.for.vault <- function (account.id=NULL,vault.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier list-tags-for-vault",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.list.vaults <- function (account.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws glacier list-vaults",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
glacier.remove.tags.from.vault <- function (account.id=NULL,vault.name=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier remove-tags-from-vault",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.set.data.retrieval.policy <- function (account.id=NULL,policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier set-data-retrieval-policy",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.set.vault.access.policy <- function (account.id=NULL,vault.name=NULL,policy=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier set-vault-access-policy",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(policy),paste("--policy",policy),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.set.vault.notifications <- function (account.id=NULL,vault.name=NULL,vault.notification.config=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier set-vault-notifications",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(vault.notification.config),paste("--vault-notification-config",vault.notification.config),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.upload.archive <- function (vault.name=NULL,account.id=NULL,archive.description=NULL,checksum=NULL,body=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier upload-archive",
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(archive.description),paste("--archive-description",archive.description),""),
                 ifelse(!is.null(checksum),paste("--checksum",checksum),""),
                 ifelse(!is.null(body),paste("--body",body),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
glacier.upload.multipart.part <- function (account.id=NULL,vault.name=NULL,upload.id=NULL,checksum=NULL,range=NULL,body=NULL,cli.input.json=NULL) {
    cmd <- paste("aws glacier upload-multipart-part",
                 ifelse(!is.null(account.id),paste("--account-id",account.id),""),
                 ifelse(!is.null(vault.name),paste("--vault-name",vault.name),""),
                 ifelse(!is.null(upload.id),paste("--upload-id",upload.id),""),
                 ifelse(!is.null(checksum),paste("--checksum",checksum),""),
                 ifelse(!is.null(range),paste("--range",range),""),
                 ifelse(!is.null(body),paste("--body",body),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
