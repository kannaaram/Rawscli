apigateway.create.api.key <- function (name=NULL,description=NULL,enabled=FALSE,no.enabled=FALSE,stage.keys=NULL,cli.input.json=NULL) {
    if(enabled && no.enabled) stop("please set either enabled or no.enabled")
    cmd <- paste("aws apigateway create-api-key",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(enabled,"--enabled",""),
                 ifelse(no.enabled,"--no-enabled",""),
                 ifelse(!is.null(stage.keys),paste("--stage-keys",stage.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.create.base.path.mapping <- function (domain.name=NULL,base.path=NULL,rest.api.id=NULL,stage=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway create-base-path-mapping",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(base.path),paste("--base-path",base.path),""),
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(stage),paste("--stage",stage),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.create.deployment <- function (rest.api.id=NULL,stage.name=NULL,stage.description=NULL,description=NULL,cache.cluster.enabled=FALSE,no.cache.cluster.enabled=FALSE,cache.cluster.size=NULL,variables=NULL,cli.input.json=NULL) {
    if(cache.cluster.enabled && no.cache.cluster.enabled) stop("please set either cache.cluster.enabled or no.cache.cluster.enabled")
    cmd <- paste("aws apigateway create-deployment",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(stage.description),paste("--stage-description",stage.description),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(cache.cluster.enabled,"--cache-cluster-enabled",""),
                 ifelse(no.cache.cluster.enabled,"--no-cache-cluster-enabled",""),
                 ifelse(!is.null(cache.cluster.size),paste("--cache-cluster-size",cache.cluster.size),""),
                 ifelse(!is.null(variables),paste("--variables",variables),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.create.domain.name <- function (domain.name=NULL,certificate.name=NULL,certificate.body=NULL,certificate.private.key=NULL,certificate.chain=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway create-domain-name",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(certificate.name),paste("--certificate-name",certificate.name),""),
                 ifelse(!is.null(certificate.body),paste("--certificate-body",certificate.body),""),
                 ifelse(!is.null(certificate.private.key),paste("--certificate-private-key",certificate.private.key),""),
                 ifelse(!is.null(certificate.chain),paste("--certificate-chain",certificate.chain),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.create.model <- function (rest.api.id=NULL,name=NULL,description=NULL,schema=NULL,content.type=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway create-model",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(schema),paste("--schema",schema),""),
                 ifelse(!is.null(content.type),paste("--content-type",content.type),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.create.resource <- function (rest.api.id=NULL,parent.id=NULL,path.part=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway create-resource",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(parent.id),paste("--parent-id",parent.id),""),
                 ifelse(!is.null(path.part),paste("--path-part",path.part),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.create.rest.api <- function (name=NULL,description=NULL,clone.from=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway create-rest-api",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(clone.from),paste("--clone-from",clone.from),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.create.stage <- function (rest.api.id=NULL,stage.name=NULL,deployment.id=NULL,description=NULL,cache.cluster.enabled=FALSE,no.cache.cluster.enabled=FALSE,cache.cluster.size=NULL,variables=NULL,cli.input.json=NULL) {
    if(cache.cluster.enabled && no.cache.cluster.enabled) stop("please set either cache.cluster.enabled or no.cache.cluster.enabled")
    cmd <- paste("aws apigateway create-stage",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(cache.cluster.enabled,"--cache-cluster-enabled",""),
                 ifelse(no.cache.cluster.enabled,"--no-cache-cluster-enabled",""),
                 ifelse(!is.null(cache.cluster.size),paste("--cache-cluster-size",cache.cluster.size),""),
                 ifelse(!is.null(variables),paste("--variables",variables),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.api.key <- function (api.key=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-api-key",
                 ifelse(!is.null(api.key),paste("--api-key",api.key),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.base.path.mapping <- function (domain.name=NULL,base.path=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-base-path-mapping",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(base.path),paste("--base-path",base.path),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.client.certificate <- function (client.certificate.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-client-certificate",
                 ifelse(!is.null(client.certificate.id),paste("--client-certificate-id",client.certificate.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.deployment <- function (rest.api.id=NULL,deployment.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-deployment",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.domain.name <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-domain-name",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.integration <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-integration",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.integration.response <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,status.code=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-integration-response",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.method <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-method",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.method.response <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,status.code=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-method-response",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.model <- function (rest.api.id=NULL,model.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-model",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(model.name),paste("--model-name",model.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.resource <- function (rest.api.id=NULL,resource.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-resource",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.rest.api <- function (rest.api.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-rest-api",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.delete.stage <- function (rest.api.id=NULL,stage.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway delete-stage",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.flush.stage.cache <- function (rest.api.id=NULL,stage.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway flush-stage-cache",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.generate.client.certificate <- function (description=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway generate-client-certificate",
                 ifelse(!is.null(description),paste("--description",description),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.account <- function (cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-account",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.api.key <- function (api.key=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-api-key",
                 ifelse(!is.null(api.key),paste("--api-key",api.key),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.api.keys <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws apigateway get-api-keys",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.base.path.mapping <- function (domain.name=NULL,base.path=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-base-path-mapping",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(base.path),paste("--base-path",base.path),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.base.path.mappings <- function (domain.name=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws apigateway get-base-path-mappings",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.client.certificate <- function (client.certificate.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-client-certificate",
                 ifelse(!is.null(client.certificate.id),paste("--client-certificate-id",client.certificate.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.client.certificates <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws apigateway get-client-certificates",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.deployment <- function (rest.api.id=NULL,deployment.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-deployment",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.deployments <- function (rest.api.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws apigateway get-deployments",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.domain.name <- function (domain.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-domain-name",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.domain.names <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws apigateway get-domain-names",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.integration <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-integration",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.integration.response <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,status.code=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-integration-response",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.method <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-method",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.method.response <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,status.code=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-method-response",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.model <- function (rest.api.id=NULL,model.name=NULL,flatten=FALSE,no.flatten=FALSE,cli.input.json=NULL) {
    if(flatten && no.flatten) stop("please set either flatten or no.flatten")
    cmd <- paste("aws apigateway get-model",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(model.name),paste("--model-name",model.name),""),
                 ifelse(flatten,"--flatten",""),
                 ifelse(no.flatten,"--no-flatten",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.model.template <- function (rest.api.id=NULL,model.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-model-template",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(model.name),paste("--model-name",model.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.models <- function (rest.api.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws apigateway get-models",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.resource <- function (rest.api.id=NULL,resource.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-resource",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.resources <- function (rest.api.id=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws apigateway get-resources",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.rest.api <- function (rest.api.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-rest-api",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.rest.apis <- function (cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws apigateway get-rest-apis",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.sdk <- function (rest.api.id=NULL,stage.name=NULL,sdk.type=NULL,parameters=NULL,outfile=NULL) {
    cmd <- paste("aws apigateway get-sdk",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(sdk.type),paste("--sdk-type",sdk.type),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.stage <- function (rest.api.id=NULL,stage.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-stage",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.get.stages <- function (rest.api.id=NULL,deployment.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway get-stages",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.put.integration <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,type=NULL,integration.http.method=NULL,uri=NULL,credentials=NULL,request.parameters=NULL,request.templates=NULL,cache.namespace=NULL,cache.key.parameters=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway put-integration",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(type),paste("--type",type),""),
                 ifelse(!is.null(integration.http.method),paste("--integration-http-method",integration.http.method),""),
                 ifelse(!is.null(uri),paste("--uri",uri),""),
                 ifelse(!is.null(credentials),paste("--credentials",credentials),""),
                 ifelse(!is.null(request.parameters),paste("--request-parameters",request.parameters),""),
                 ifelse(!is.null(request.templates),paste("--request-templates",request.templates),""),
                 ifelse(!is.null(cache.namespace),paste("--cache-namespace",cache.namespace),""),
                 ifelse(!is.null(cache.key.parameters),paste("--cache-key-parameters",cache.key.parameters),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.put.integration.response <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,status.code=NULL,selection.pattern=NULL,response.parameters=NULL,response.templates=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway put-integration-response",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(selection.pattern),paste("--selection-pattern",selection.pattern),""),
                 ifelse(!is.null(response.parameters),paste("--response-parameters",response.parameters),""),
                 ifelse(!is.null(response.templates),paste("--response-templates",response.templates),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.put.method <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,authorization.type=NULL,api.key.required=FALSE,no.api.key.required=FALSE,request.parameters=NULL,request.models=NULL,cli.input.json=NULL) {
    if(api.key.required && no.api.key.required) stop("please set either api.key.required or no.api.key.required")
    cmd <- paste("aws apigateway put-method",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(authorization.type),paste("--authorization-type",authorization.type),""),
                 ifelse(api.key.required,"--api-key-required",""),
                 ifelse(no.api.key.required,"--no-api-key-required",""),
                 ifelse(!is.null(request.parameters),paste("--request-parameters",request.parameters),""),
                 ifelse(!is.null(request.models),paste("--request-models",request.models),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.put.method.response <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,status.code=NULL,response.parameters=NULL,response.models=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway put-method-response",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(response.parameters),paste("--response-parameters",response.parameters),""),
                 ifelse(!is.null(response.models),paste("--response-models",response.models),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.test.invoke.method <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,path.with.query.string=NULL,body=NULL,headers=NULL,client.certificate.id=NULL,stage.variables=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway test-invoke-method",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(path.with.query.string),paste("--path-with-query-string",path.with.query.string),""),
                 ifelse(!is.null(body),paste("--body",body),""),
                 ifelse(!is.null(headers),paste("--headers",headers),""),
                 ifelse(!is.null(client.certificate.id),paste("--client-certificate-id",client.certificate.id),""),
                 ifelse(!is.null(stage.variables),paste("--stage-variables",stage.variables),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.account <- function (patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-account",
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.api.key <- function (api.key=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-api-key",
                 ifelse(!is.null(api.key),paste("--api-key",api.key),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.base.path.mapping <- function (domain.name=NULL,base.path=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-base-path-mapping",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(base.path),paste("--base-path",base.path),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.client.certificate <- function (client.certificate.id=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-client-certificate",
                 ifelse(!is.null(client.certificate.id),paste("--client-certificate-id",client.certificate.id),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.deployment <- function (rest.api.id=NULL,deployment.id=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-deployment",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(deployment.id),paste("--deployment-id",deployment.id),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.domain.name <- function (domain.name=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-domain-name",
                 ifelse(!is.null(domain.name),paste("--domain-name",domain.name),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.integration <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-integration",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.integration.response <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,status.code=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-integration-response",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.method <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-method",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.method.response <- function (rest.api.id=NULL,resource.id=NULL,http.method=NULL,status.code=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-method-response",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(http.method),paste("--http-method",http.method),""),
                 ifelse(!is.null(status.code),paste("--status-code",status.code),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.model <- function (rest.api.id=NULL,model.name=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-model",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(model.name),paste("--model-name",model.name),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.resource <- function (rest.api.id=NULL,resource.id=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-resource",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(resource.id),paste("--resource-id",resource.id),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.rest.api <- function (rest.api.id=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-rest-api",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
apigateway.update.stage <- function (rest.api.id=NULL,stage.name=NULL,patch.operations=NULL,cli.input.json=NULL) {
    cmd <- paste("aws apigateway update-stage",
                 ifelse(!is.null(rest.api.id),paste("--rest-api-id",rest.api.id),""),
                 ifelse(!is.null(stage.name),paste("--stage-name",stage.name),""),
                 ifelse(!is.null(patch.operations),paste("--patch-operations",patch.operations),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
