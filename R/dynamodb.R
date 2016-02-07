dynamodb.batch.get.item <- function (request.items=NULL,return.consumed.capacity=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb batch-get-item",
                 ifelse(!is.null(request.items),paste("--request-items",request.items),""),
                 ifelse(!is.null(return.consumed.capacity),paste("--return-consumed-capacity",return.consumed.capacity),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.batch.write.item <- function (request.items=NULL,return.consumed.capacity=NULL,return.item.collection.metrics=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb batch-write-item",
                 ifelse(!is.null(request.items),paste("--request-items",request.items),""),
                 ifelse(!is.null(return.consumed.capacity),paste("--return-consumed-capacity",return.consumed.capacity),""),
                 ifelse(!is.null(return.item.collection.metrics),paste("--return-item-collection-metrics",return.item.collection.metrics),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.create.table <- function (attribute.definitions=NULL,table.name=NULL,key.schema=NULL,local.secondary.indexes=NULL,global.secondary.indexes=NULL,provisioned.throughput=NULL,stream.specification=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb create-table",
                 ifelse(!is.null(attribute.definitions),paste("--attribute-definitions",attribute.definitions),""),
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(key.schema),paste("--key-schema",key.schema),""),
                 ifelse(!is.null(local.secondary.indexes),paste("--local-secondary-indexes",local.secondary.indexes),""),
                 ifelse(!is.null(global.secondary.indexes),paste("--global-secondary-indexes",global.secondary.indexes),""),
                 ifelse(!is.null(provisioned.throughput),paste("--provisioned-throughput",provisioned.throughput),""),
                 ifelse(!is.null(stream.specification),paste("--stream-specification",stream.specification),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.delete.item <- function (table.name=NULL,key=NULL,expected=NULL,conditional.operator=NULL,return.values=NULL,return.consumed.capacity=NULL,return.item.collection.metrics=NULL,condition.expression=NULL,expression.attribute.names=NULL,expression.attribute.values=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb delete-item",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(expected),paste("--expected",expected),""),
                 ifelse(!is.null(conditional.operator),paste("--conditional-operator",conditional.operator),""),
                 ifelse(!is.null(return.values),paste("--return-values",return.values),""),
                 ifelse(!is.null(return.consumed.capacity),paste("--return-consumed-capacity",return.consumed.capacity),""),
                 ifelse(!is.null(return.item.collection.metrics),paste("--return-item-collection-metrics",return.item.collection.metrics),""),
                 ifelse(!is.null(condition.expression),paste("--condition-expression",condition.expression),""),
                 ifelse(!is.null(expression.attribute.names),paste("--expression-attribute-names",expression.attribute.names),""),
                 ifelse(!is.null(expression.attribute.values),paste("--expression-attribute-values",expression.attribute.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.delete.table <- function (table.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb delete-table",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.describe.table <- function (table.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb describe-table",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.get.item <- function (table.name=NULL,key=NULL,attributes.to.get=NULL,consistent.read=FALSE,no.consistent.read=FALSE,return.consumed.capacity=NULL,projection.expression=NULL,expression.attribute.names=NULL,cli.input.json=NULL) {
    if(consistent.read && no.consistent.read) stop("please set either consistent.read or no.consistent.read")
    cmd <- paste("aws dynamodb get-item",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(attributes.to.get),paste("--attributes-to-get",attributes.to.get),""),
                 ifelse(consistent.read,"--consistent-read",""),
                 ifelse(no.consistent.read,"--no-consistent-read",""),
                 ifelse(!is.null(return.consumed.capacity),paste("--return-consumed-capacity",return.consumed.capacity),""),
                 ifelse(!is.null(projection.expression),paste("--projection-expression",projection.expression),""),
                 ifelse(!is.null(expression.attribute.names),paste("--expression-attribute-names",expression.attribute.names),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.list.tables <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws dynamodb list-tables",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
dynamodb.put.item <- function (table.name=NULL,item=NULL,expected=NULL,return.values=NULL,return.consumed.capacity=NULL,return.item.collection.metrics=NULL,conditional.operator=NULL,condition.expression=NULL,expression.attribute.names=NULL,expression.attribute.values=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb put-item",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(item),paste("--item",item),""),
                 ifelse(!is.null(expected),paste("--expected",expected),""),
                 ifelse(!is.null(return.values),paste("--return-values",return.values),""),
                 ifelse(!is.null(return.consumed.capacity),paste("--return-consumed-capacity",return.consumed.capacity),""),
                 ifelse(!is.null(return.item.collection.metrics),paste("--return-item-collection-metrics",return.item.collection.metrics),""),
                 ifelse(!is.null(conditional.operator),paste("--conditional-operator",conditional.operator),""),
                 ifelse(!is.null(condition.expression),paste("--condition-expression",condition.expression),""),
                 ifelse(!is.null(expression.attribute.names),paste("--expression-attribute-names",expression.attribute.names),""),
                 ifelse(!is.null(expression.attribute.values),paste("--expression-attribute-values",expression.attribute.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.query <- function (table.name=NULL,index.name=NULL,select=NULL,attributes.to.get=NULL,consistent.read=FALSE,no.consistent.read=FALSE,key.conditions=NULL,query.filter=NULL,conditional.operator=NULL,scan.index.forward=FALSE,no.scan.index.forward=FALSE,return.consumed.capacity=NULL,projection.expression=NULL,filter.expression=NULL,key.condition.expression=NULL,expression.attribute.names=NULL,expression.attribute.values=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(consistent.read && no.consistent.read) stop("please set either consistent.read or no.consistent.read")
    if(scan.index.forward && no.scan.index.forward) stop("please set either scan.index.forward or no.scan.index.forward")
    cmd <- paste("aws dynamodb query",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(index.name),paste("--index-name",index.name),""),
                 ifelse(!is.null(select),paste("--select",select),""),
                 ifelse(!is.null(attributes.to.get),paste("--attributes-to-get",attributes.to.get),""),
                 ifelse(consistent.read,"--consistent-read",""),
                 ifelse(no.consistent.read,"--no-consistent-read",""),
                 ifelse(!is.null(key.conditions),paste("--key-conditions",key.conditions),""),
                 ifelse(!is.null(query.filter),paste("--query-filter",query.filter),""),
                 ifelse(!is.null(conditional.operator),paste("--conditional-operator",conditional.operator),""),
                 ifelse(scan.index.forward,"--scan-index-forward",""),
                 ifelse(no.scan.index.forward,"--no-scan-index-forward",""),
                 ifelse(!is.null(return.consumed.capacity),paste("--return-consumed-capacity",return.consumed.capacity),""),
                 ifelse(!is.null(projection.expression),paste("--projection-expression",projection.expression),""),
                 ifelse(!is.null(filter.expression),paste("--filter-expression",filter.expression),""),
                 ifelse(!is.null(key.condition.expression),paste("--key-condition-expression",key.condition.expression),""),
                 ifelse(!is.null(expression.attribute.names),paste("--expression-attribute-names",expression.attribute.names),""),
                 ifelse(!is.null(expression.attribute.values),paste("--expression-attribute-values",expression.attribute.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
dynamodb.scan <- function (table.name=NULL,index.name=NULL,attributes.to.get=NULL,select=NULL,scan.filter=NULL,conditional.operator=NULL,return.consumed.capacity=NULL,total.segments=NULL,segment=NULL,projection.expression=NULL,filter.expression=NULL,expression.attribute.names=NULL,expression.attribute.values=NULL,consistent.read=FALSE,no.consistent.read=FALSE,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    if(consistent.read && no.consistent.read) stop("please set either consistent.read or no.consistent.read")
    cmd <- paste("aws dynamodb scan",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(index.name),paste("--index-name",index.name),""),
                 ifelse(!is.null(attributes.to.get),paste("--attributes-to-get",attributes.to.get),""),
                 ifelse(!is.null(select),paste("--select",select),""),
                 ifelse(!is.null(scan.filter),paste("--scan-filter",scan.filter),""),
                 ifelse(!is.null(conditional.operator),paste("--conditional-operator",conditional.operator),""),
                 ifelse(!is.null(return.consumed.capacity),paste("--return-consumed-capacity",return.consumed.capacity),""),
                 ifelse(!is.null(total.segments),paste("--total-segments",total.segments),""),
                 ifelse(!is.null(segment),paste("--segment",segment),""),
                 ifelse(!is.null(projection.expression),paste("--projection-expression",projection.expression),""),
                 ifelse(!is.null(filter.expression),paste("--filter-expression",filter.expression),""),
                 ifelse(!is.null(expression.attribute.names),paste("--expression-attribute-names",expression.attribute.names),""),
                 ifelse(!is.null(expression.attribute.values),paste("--expression-attribute-values",expression.attribute.values),""),
                 ifelse(consistent.read,"--consistent-read",""),
                 ifelse(no.consistent.read,"--no-consistent-read",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
dynamodb.update.item <- function (table.name=NULL,key=NULL,attribute.updates=NULL,expected=NULL,conditional.operator=NULL,return.values=NULL,return.consumed.capacity=NULL,return.item.collection.metrics=NULL,update.expression=NULL,condition.expression=NULL,expression.attribute.names=NULL,expression.attribute.values=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb update-item",
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(key),paste("--key",key),""),
                 ifelse(!is.null(attribute.updates),paste("--attribute-updates",attribute.updates),""),
                 ifelse(!is.null(expected),paste("--expected",expected),""),
                 ifelse(!is.null(conditional.operator),paste("--conditional-operator",conditional.operator),""),
                 ifelse(!is.null(return.values),paste("--return-values",return.values),""),
                 ifelse(!is.null(return.consumed.capacity),paste("--return-consumed-capacity",return.consumed.capacity),""),
                 ifelse(!is.null(return.item.collection.metrics),paste("--return-item-collection-metrics",return.item.collection.metrics),""),
                 ifelse(!is.null(update.expression),paste("--update-expression",update.expression),""),
                 ifelse(!is.null(condition.expression),paste("--condition-expression",condition.expression),""),
                 ifelse(!is.null(expression.attribute.names),paste("--expression-attribute-names",expression.attribute.names),""),
                 ifelse(!is.null(expression.attribute.values),paste("--expression-attribute-values",expression.attribute.values),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
dynamodb.update.table <- function (attribute.definitions=NULL,table.name=NULL,provisioned.throughput=NULL,global.secondary.index.updates=NULL,stream.specification=NULL,cli.input.json=NULL) {
    cmd <- paste("aws dynamodb update-table",
                 ifelse(!is.null(attribute.definitions),paste("--attribute-definitions",attribute.definitions),""),
                 ifelse(!is.null(table.name),paste("--table-name",table.name),""),
                 ifelse(!is.null(provisioned.throughput),paste("--provisioned-throughput",provisioned.throughput),""),
                 ifelse(!is.null(global.secondary.index.updates),paste("--global-secondary-index-updates",global.secondary.index.updates),""),
                 ifelse(!is.null(stream.specification),paste("--stream-specification",stream.specification),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
