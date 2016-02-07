workspaces.create.workspaces <- function (workspaces=NULL,cli.input.json=NULL) {
    cmd <- paste("aws workspaces create-workspaces",
                 ifelse(!is.null(workspaces),paste("--workspaces",workspaces),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
workspaces.describe.workspace.bundles <- function (bundle.ids=NULL,owner=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws workspaces describe-workspace-bundles",
                 ifelse(!is.null(bundle.ids),paste("--bundle-ids",bundle.ids),""),
                 ifelse(!is.null(owner),paste("--owner",owner),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
workspaces.describe.workspace.directories <- function (directory.ids=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws workspaces describe-workspace-directories",
                 ifelse(!is.null(directory.ids),paste("--directory-ids",directory.ids),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
workspaces.describe.workspaces <- function (workspace.ids=NULL,directory.id=NULL,user.name=NULL,bundle.id=NULL,limit=NULL,next.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws workspaces describe-workspaces",
                 ifelse(!is.null(workspace.ids),paste("--workspace-ids",workspace.ids),""),
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(bundle.id),paste("--bundle-id",bundle.id),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
workspaces.reboot.workspaces <- function (reboot.workspace.requests=NULL,cli.input.json=NULL) {
    cmd <- paste("aws workspaces reboot-workspaces",
                 ifelse(!is.null(reboot.workspace.requests),paste("--reboot-workspace-requests",reboot.workspace.requests),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
workspaces.rebuild.workspaces <- function (rebuild.workspace.requests=NULL,cli.input.json=NULL) {
    cmd <- paste("aws workspaces rebuild-workspaces",
                 ifelse(!is.null(rebuild.workspace.requests),paste("--rebuild-workspace-requests",rebuild.workspace.requests),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
workspaces.terminate.workspaces <- function (terminate.workspace.requests=NULL,cli.input.json=NULL) {
    cmd <- paste("aws workspaces terminate-workspaces",
                 ifelse(!is.null(terminate.workspace.requests),paste("--terminate-workspace-requests",terminate.workspace.requests),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
