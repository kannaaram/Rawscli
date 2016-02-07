waf.create.byte.match.set <- function (name=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf create-byte-match-set",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.create.ip.set <- function (name=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf create-ip-set",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.create.rule <- function (name=NULL,metric.name=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf create-rule",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(metric.name),paste("--metric-name",metric.name),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.create.sql.injection.match.set <- function (name=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf create-sql-injection-match-set",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.create.web.acl <- function (name=NULL,metric.name=NULL,default.action=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf create-web-acl",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(metric.name),paste("--metric-name",metric.name),""),
                 ifelse(!is.null(default.action),paste("--default-action",default.action),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.delete.byte.match.set <- function (byte.match.set.id=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf delete-byte-match-set",
                 ifelse(!is.null(byte.match.set.id),paste("--byte-match-set-id",byte.match.set.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.delete.ip.set <- function (ip.set.id=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf delete-ip-set",
                 ifelse(!is.null(ip.set.id),paste("--ip-set-id",ip.set.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.delete.rule <- function (rule.id=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf delete-rule",
                 ifelse(!is.null(rule.id),paste("--rule-id",rule.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.delete.sql.injection.match.set <- function (sql.injection.match.set.id=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf delete-sql-injection-match-set",
                 ifelse(!is.null(sql.injection.match.set.id),paste("--sql-injection-match-set-id",sql.injection.match.set.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.delete.web.acl <- function (web.acl.id=NULL,change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf delete-web-acl",
                 ifelse(!is.null(web.acl.id),paste("--web-acl-id",web.acl.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.get.byte.match.set <- function (byte.match.set.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf get-byte-match-set",
                 ifelse(!is.null(byte.match.set.id),paste("--byte-match-set-id",byte.match.set.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.get.change.token <- function (cli.input.json=NULL) {
    cmd <- paste("aws waf get-change-token",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.get.change.token.status <- function (change.token=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf get-change-token-status",
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.get.ip.set <- function (ip.set.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf get-ip-set",
                 ifelse(!is.null(ip.set.id),paste("--ip-set-id",ip.set.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.get.rule <- function (rule.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf get-rule",
                 ifelse(!is.null(rule.id),paste("--rule-id",rule.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.get.sampled.requests <- function (web.acl.id=NULL,rule.id=NULL,time.window=NULL,max.items=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf get-sampled-requests",
                 ifelse(!is.null(web.acl.id),paste("--web-acl-id",web.acl.id),""),
                 ifelse(!is.null(rule.id),paste("--rule-id",rule.id),""),
                 ifelse(!is.null(time.window),paste("--time-window",time.window),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.get.sql.injection.match.set <- function (sql.injection.match.set.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf get-sql-injection-match-set",
                 ifelse(!is.null(sql.injection.match.set.id),paste("--sql-injection-match-set-id",sql.injection.match.set.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.get.web.acl <- function (web.acl.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf get-web-acl",
                 ifelse(!is.null(web.acl.id),paste("--web-acl-id",web.acl.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.list.byte.match.sets <- function (next.marker=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf list-byte-match-sets",
                 ifelse(!is.null(next.marker),paste("--next-marker",next.marker),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.list.ip.sets <- function (next.marker=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf list-ip-sets",
                 ifelse(!is.null(next.marker),paste("--next-marker",next.marker),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.list.rules <- function (next.marker=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf list-rules",
                 ifelse(!is.null(next.marker),paste("--next-marker",next.marker),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.list.sql.injection.match.sets <- function (next.marker=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf list-sql-injection-match-sets",
                 ifelse(!is.null(next.marker),paste("--next-marker",next.marker),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.list.web.acls <- function (next.marker=NULL,limit=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf list-web-acls",
                 ifelse(!is.null(next.marker),paste("--next-marker",next.marker),""),
                 ifelse(!is.null(limit),paste("--limit",limit),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.update.byte.match.set <- function (byte.match.set.id=NULL,change.token=NULL,updates=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf update-byte-match-set",
                 ifelse(!is.null(byte.match.set.id),paste("--byte-match-set-id",byte.match.set.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(updates),paste("--updates",updates),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.update.ip.set <- function (ip.set.id=NULL,change.token=NULL,updates=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf update-ip-set",
                 ifelse(!is.null(ip.set.id),paste("--ip-set-id",ip.set.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(updates),paste("--updates",updates),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.update.rule <- function (rule.id=NULL,change.token=NULL,updates=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf update-rule",
                 ifelse(!is.null(rule.id),paste("--rule-id",rule.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(updates),paste("--updates",updates),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.update.sql.injection.match.set <- function (sql.injection.match.set.id=NULL,change.token=NULL,updates=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf update-sql-injection-match-set",
                 ifelse(!is.null(sql.injection.match.set.id),paste("--sql-injection-match-set-id",sql.injection.match.set.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(updates),paste("--updates",updates),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
waf.update.web.acl <- function (web.acl.id=NULL,change.token=NULL,updates=NULL,default.action=NULL,cli.input.json=NULL) {
    cmd <- paste("aws waf update-web-acl",
                 ifelse(!is.null(web.acl.id),paste("--web-acl-id",web.acl.id),""),
                 ifelse(!is.null(change.token),paste("--change-token",change.token),""),
                 ifelse(!is.null(updates),paste("--updates",updates),""),
                 ifelse(!is.null(default.action),paste("--default-action",default.action),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
