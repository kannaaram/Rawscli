ds.connect.directory <- function (name=NULL,short.name=NULL,password=NULL,description=NULL,size=NULL,connect.settings=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds connect-directory",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(short.name),paste("--short-name",short.name),""),
                 ifelse(!is.null(password),paste("--password",password),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(size),paste("--size",size),""),
                 ifelse(!is.null(connect.settings),paste("--connect-settings",connect.settings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.create.alias <- function (directory.id=NULL,alias=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds create-alias",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(alias),paste("--alias",alias),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.create.computer <- function (directory.id=NULL,computer.name=NULL,password=NULL,organizational.unit.distinguished.name=NULL,computer.attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds create-computer",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(computer.name),paste("--computer-name",computer.name),""),
                 ifelse(!is.null(password),paste("--password",password),""),
                 ifelse(!is.null(organizational.unit.distinguished.name),paste("--organizational-unit-distinguished-name",organizational.unit.distinguished.name),""),
                 ifelse(!is.null(computer.attributes),paste("--computer-attributes",computer.attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.create.directory <- function (name=NULL,short.name=NULL,password=NULL,description=NULL,size=NULL,vpc.settings=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds create-directory",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(short.name),paste("--short-name",short.name),""),
                 ifelse(!is.null(password),paste("--password",password),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(size),paste("--size",size),""),
                 ifelse(!is.null(vpc.settings),paste("--vpc-settings",vpc.settings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.create.snapshot <- function (directory.id=NULL,name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds create-snapshot",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.delete.directory <- function (directory.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds delete-directory",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.delete.snapshot <- function (snapshot.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds delete-snapshot",
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.describe.directories <- function (directory.ids=NULL,next.token=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds describe-directories",
                 ifelse(!is.null(directory.ids),paste("--directory-ids",directory.ids),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.describe.snapshots <- function (directory.id=NULL,snapshot.ids=NULL,next.token=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds describe-snapshots",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(snapshot.ids),paste("--snapshot-ids",snapshot.ids),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.disable.radius <- function (directory.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds disable-radius",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.disable.sso <- function (directory.id=NULL,user.name=NULL,password=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds disable-sso",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(password),paste("--password",password),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.enable.radius <- function (directory.id=NULL,radius.settings=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds enable-radius",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(radius.settings),paste("--radius-settings",radius.settings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.enable.sso <- function (directory.id=NULL,user.name=NULL,password=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds enable-sso",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(user.name),paste("--user-name",user.name),""),
                 ifelse(!is.null(password),paste("--password",password),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.get.directory.limits <- function (cli.input.json=NULL) {
    cmd <- paste("aws ds get-directory-limits",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.get.snapshot.limits <- function (directory.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds get-snapshot-limits",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.restore.from.snapshot <- function (snapshot.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds restore-from-snapshot",
                 ifelse(!is.null(snapshot.id),paste("--snapshot-id",snapshot.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
ds.update.radius <- function (directory.id=NULL,radius.settings=NULL,cli.input.json=NULL) {
    cmd <- paste("aws ds update-radius",
                 ifelse(!is.null(directory.id),paste("--directory-id",directory.id),""),
                 ifelse(!is.null(radius.settings),paste("--radius-settings",radius.settings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
