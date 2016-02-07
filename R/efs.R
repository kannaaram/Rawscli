efs.create.file.system <- function (creation.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs create-file-system",
                 ifelse(!is.null(creation.token),paste("--creation-token",creation.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.create.mount.target <- function (file.system.id=NULL,subnet.id=NULL,ip.address=NULL,security.groups=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs create-mount-target",
                 ifelse(!is.null(file.system.id),paste("--file-system-id",file.system.id),""),
                 ifelse(!is.null(subnet.id),paste("--subnet-id",subnet.id),""),
                 ifelse(!is.null(ip.address),paste("--ip-address",ip.address),""),
                 ifelse(!is.null(security.groups),paste("--security-groups",security.groups),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.create.tags <- function (file.system.id=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs create-tags",
                 ifelse(!is.null(file.system.id),paste("--file-system-id",file.system.id),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.delete.file.system <- function (file.system.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs delete-file-system",
                 ifelse(!is.null(file.system.id),paste("--file-system-id",file.system.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.delete.mount.target <- function (mount.target.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs delete-mount-target",
                 ifelse(!is.null(mount.target.id),paste("--mount-target-id",mount.target.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.delete.tags <- function (file.system.id=NULL,tag.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs delete-tags",
                 ifelse(!is.null(file.system.id),paste("--file-system-id",file.system.id),""),
                 ifelse(!is.null(tag.keys),paste("--tag-keys",tag.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.describe.file.systems <- function (max.items=NULL,marker=NULL,creation.token=NULL,file.system.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs describe-file-systems",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(creation.token),paste("--creation-token",creation.token),""),
                 ifelse(!is.null(file.system.id),paste("--file-system-id",file.system.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.describe.mount.target.security.groups <- function (mount.target.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs describe-mount-target-security-groups",
                 ifelse(!is.null(mount.target.id),paste("--mount-target-id",mount.target.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.describe.mount.targets <- function (max.items=NULL,marker=NULL,file.system.id=NULL,mount.target.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs describe-mount-targets",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(file.system.id),paste("--file-system-id",file.system.id),""),
                 ifelse(!is.null(mount.target.id),paste("--mount-target-id",mount.target.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.describe.tags <- function (max.items=NULL,marker=NULL,file.system.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs describe-tags",
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(marker),paste("--marker",marker),""),
                 ifelse(!is.null(file.system.id),paste("--file-system-id",file.system.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
efs.modify.mount.target.security.groups <- function (mount.target.id=NULL,security.groups=NULL,cli.input.json=NULL) {
    cmd <- paste("aws efs modify-mount-target-security-groups",
                 ifelse(!is.null(mount.target.id),paste("--mount-target-id",mount.target.id),""),
                 ifelse(!is.null(security.groups),paste("--security-groups",security.groups),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
