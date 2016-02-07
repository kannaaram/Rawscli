codecommit.batch.get.repositories <- function (repository.names=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit batch-get-repositories",
                 ifelse(!is.null(repository.names),paste("--repository-names",repository.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.create.branch <- function (repository.name=NULL,branch.name=NULL,commit.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit create-branch",
                 ifelse(!is.null(repository.name),paste("--repository-name",repository.name),""),
                 ifelse(!is.null(branch.name),paste("--branch-name",branch.name),""),
                 ifelse(!is.null(commit.id),paste("--commit-id",commit.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.create.repository <- function (repository.name=NULL,repository.description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit create-repository",
                 ifelse(!is.null(repository.name),paste("--repository-name",repository.name),""),
                 ifelse(!is.null(repository.description),paste("--repository-description",repository.description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.delete.repository <- function (repository.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit delete-repository",
                 ifelse(!is.null(repository.name),paste("--repository-name",repository.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.get.branch <- function (repository.name=NULL,branch.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit get-branch",
                 ifelse(!is.null(repository.name),paste("--repository-name",repository.name),""),
                 ifelse(!is.null(branch.name),paste("--branch-name",branch.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.get.repository <- function (repository.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit get-repository",
                 ifelse(!is.null(repository.name),paste("--repository-name",repository.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.list.branches <- function (repository.name=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit list-branches",
                 ifelse(!is.null(repository.name),paste("--repository-name",repository.name),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.list.repositories <- function (next.token=NULL,sort.by=NULL,order=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit list-repositories",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(sort.by),paste("--sort-by",sort.by),""),
                 ifelse(!is.null(order),paste("--order",order),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.update.default.branch <- function (repository.name=NULL,default.branch.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit update-default-branch",
                 ifelse(!is.null(repository.name),paste("--repository-name",repository.name),""),
                 ifelse(!is.null(default.branch.name),paste("--default-branch-name",default.branch.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.update.repository.description <- function (repository.name=NULL,repository.description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit update-repository-description",
                 ifelse(!is.null(repository.name),paste("--repository-name",repository.name),""),
                 ifelse(!is.null(repository.description),paste("--repository-description",repository.description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
codecommit.update.repository.name <- function (old.name=NULL,new.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws codecommit update-repository-name",
                 ifelse(!is.null(old.name),paste("--old-name",old.name),""),
                 ifelse(!is.null(new.name),paste("--new-name",new.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
