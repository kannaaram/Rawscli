machinelearning.create.batch.prediction <- function (batch.prediction.id=NULL,batch.prediction.name=NULL,ml.model.id=NULL,batch.prediction.data.source.id=NULL,output.uri=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning create-batch-prediction",
                 ifelse(!is.null(batch.prediction.id),paste("--batch-prediction-id",batch.prediction.id),""),
                 ifelse(!is.null(batch.prediction.name),paste("--batch-prediction-name",batch.prediction.name),""),
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(!is.null(batch.prediction.data.source.id),paste("--batch-prediction-data-source-id",batch.prediction.data.source.id),""),
                 ifelse(!is.null(output.uri),paste("--output-uri",output.uri),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.create.data.source.from.rds <- function (data.source.id=NULL,data.source.name=NULL,rds.data=NULL,role.arn=NULL,compute.statistics=FALSE,no.compute.statistics=FALSE,cli.input.json=NULL) {
    if(compute.statistics && no.compute.statistics) stop("please set either compute.statistics or no.compute.statistics")
    cmd <- paste("aws machinelearning create-data-source-from-rds",
                 ifelse(!is.null(data.source.id),paste("--data-source-id",data.source.id),""),
                 ifelse(!is.null(data.source.name),paste("--data-source-name",data.source.name),""),
                 ifelse(!is.null(rds.data),paste("--rds-data",rds.data),""),
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(compute.statistics,"--compute-statistics",""),
                 ifelse(no.compute.statistics,"--no-compute-statistics",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.create.data.source.from.redshift <- function (data.source.id=NULL,data.source.name=NULL,data.spec=NULL,role.arn=NULL,compute.statistics=FALSE,no.compute.statistics=FALSE,cli.input.json=NULL) {
    if(compute.statistics && no.compute.statistics) stop("please set either compute.statistics or no.compute.statistics")
    cmd <- paste("aws machinelearning create-data-source-from-redshift",
                 ifelse(!is.null(data.source.id),paste("--data-source-id",data.source.id),""),
                 ifelse(!is.null(data.source.name),paste("--data-source-name",data.source.name),""),
                 ifelse(!is.null(data.spec),paste("--data-spec",data.spec),""),
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(compute.statistics,"--compute-statistics",""),
                 ifelse(no.compute.statistics,"--no-compute-statistics",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.create.data.source.from.s3 <- function (data.source.id=NULL,data.source.name=NULL,data.spec=NULL,compute.statistics=FALSE,no.compute.statistics=FALSE,cli.input.json=NULL) {
    if(compute.statistics && no.compute.statistics) stop("please set either compute.statistics or no.compute.statistics")
    cmd <- paste("aws machinelearning create-data-source-from-s3",
                 ifelse(!is.null(data.source.id),paste("--data-source-id",data.source.id),""),
                 ifelse(!is.null(data.source.name),paste("--data-source-name",data.source.name),""),
                 ifelse(!is.null(data.spec),paste("--data-spec",data.spec),""),
                 ifelse(compute.statistics,"--compute-statistics",""),
                 ifelse(no.compute.statistics,"--no-compute-statistics",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.create.evaluation <- function (evaluation.id=NULL,evaluation.name=NULL,ml.model.id=NULL,evaluation.data.source.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning create-evaluation",
                 ifelse(!is.null(evaluation.id),paste("--evaluation-id",evaluation.id),""),
                 ifelse(!is.null(evaluation.name),paste("--evaluation-name",evaluation.name),""),
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(!is.null(evaluation.data.source.id),paste("--evaluation-data-source-id",evaluation.data.source.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.create.ml.model <- function (ml.model.id=NULL,ml.model.name=NULL,ml.model.type=NULL,parameters=NULL,training.data.source.id=NULL,recipe=NULL,recipe.uri=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning create-ml-model",
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(!is.null(ml.model.name),paste("--ml-model-name",ml.model.name),""),
                 ifelse(!is.null(ml.model.type),paste("--ml-model-type",ml.model.type),""),
                 ifelse(!is.null(parameters),paste("--parameters",parameters),""),
                 ifelse(!is.null(training.data.source.id),paste("--training-data-source-id",training.data.source.id),""),
                 ifelse(!is.null(recipe),paste("--recipe",recipe),""),
                 ifelse(!is.null(recipe.uri),paste("--recipe-uri",recipe.uri),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.create.realtime.endpoint <- function (ml.model.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning create-realtime-endpoint",
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.delete.batch.prediction <- function (batch.prediction.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning delete-batch-prediction",
                 ifelse(!is.null(batch.prediction.id),paste("--batch-prediction-id",batch.prediction.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.delete.data.source <- function (data.source.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning delete-data-source",
                 ifelse(!is.null(data.source.id),paste("--data-source-id",data.source.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.delete.evaluation <- function (evaluation.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning delete-evaluation",
                 ifelse(!is.null(evaluation.id),paste("--evaluation-id",evaluation.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.delete.ml.model <- function (ml.model.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning delete-ml-model",
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.delete.realtime.endpoint <- function (ml.model.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning delete-realtime-endpoint",
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.describe.batch.predictions <- function (filter.variable=NULL,eq=NULL,gt=NULL,lt=NULL,ge=NULL,le=NULL,ne=NULL,prefix=NULL,sort.order=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws machinelearning describe-batch-predictions",
                 ifelse(!is.null(filter.variable),paste("--filter-variable",filter.variable),""),
                 ifelse(!is.null(eq),paste("--eq",eq),""),
                 ifelse(!is.null(gt),paste("--gt",gt),""),
                 ifelse(!is.null(lt),paste("--lt",lt),""),
                 ifelse(!is.null(ge),paste("--ge",ge),""),
                 ifelse(!is.null(le),paste("--le",le),""),
                 ifelse(!is.null(ne),paste("--ne",ne),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(sort.order),paste("--sort-order",sort.order),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
machinelearning.describe.data.sources <- function (filter.variable=NULL,eq=NULL,gt=NULL,lt=NULL,ge=NULL,le=NULL,ne=NULL,prefix=NULL,sort.order=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws machinelearning describe-data-sources",
                 ifelse(!is.null(filter.variable),paste("--filter-variable",filter.variable),""),
                 ifelse(!is.null(eq),paste("--eq",eq),""),
                 ifelse(!is.null(gt),paste("--gt",gt),""),
                 ifelse(!is.null(lt),paste("--lt",lt),""),
                 ifelse(!is.null(ge),paste("--ge",ge),""),
                 ifelse(!is.null(le),paste("--le",le),""),
                 ifelse(!is.null(ne),paste("--ne",ne),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(sort.order),paste("--sort-order",sort.order),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
machinelearning.describe.evaluations <- function (filter.variable=NULL,eq=NULL,gt=NULL,lt=NULL,ge=NULL,le=NULL,ne=NULL,prefix=NULL,sort.order=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws machinelearning describe-evaluations",
                 ifelse(!is.null(filter.variable),paste("--filter-variable",filter.variable),""),
                 ifelse(!is.null(eq),paste("--eq",eq),""),
                 ifelse(!is.null(gt),paste("--gt",gt),""),
                 ifelse(!is.null(lt),paste("--lt",lt),""),
                 ifelse(!is.null(ge),paste("--ge",ge),""),
                 ifelse(!is.null(le),paste("--le",le),""),
                 ifelse(!is.null(ne),paste("--ne",ne),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(sort.order),paste("--sort-order",sort.order),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
machinelearning.describe.ml.models <- function (filter.variable=NULL,eq=NULL,gt=NULL,lt=NULL,ge=NULL,le=NULL,ne=NULL,prefix=NULL,sort.order=NULL,cli.input.json=NULL,starting.token=NULL,page.size=NULL,max.items=NULL) {
    cmd <- paste("aws machinelearning describe-ml-models",
                 ifelse(!is.null(filter.variable),paste("--filter-variable",filter.variable),""),
                 ifelse(!is.null(eq),paste("--eq",eq),""),
                 ifelse(!is.null(gt),paste("--gt",gt),""),
                 ifelse(!is.null(lt),paste("--lt",lt),""),
                 ifelse(!is.null(ge),paste("--ge",ge),""),
                 ifelse(!is.null(le),paste("--le",le),""),
                 ifelse(!is.null(ne),paste("--ne",ne),""),
                 ifelse(!is.null(prefix),paste("--prefix",prefix),""),
                 ifelse(!is.null(sort.order),paste("--sort-order",sort.order),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(page.size),paste("--page-size",page.size),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
machinelearning.get.batch.prediction <- function (batch.prediction.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning get-batch-prediction",
                 ifelse(!is.null(batch.prediction.id),paste("--batch-prediction-id",batch.prediction.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.get.data.source <- function (data.source.id=NULL,verbose=FALSE,no.verbose=FALSE,cli.input.json=NULL) {
    if(verbose && no.verbose) stop("please set either verbose or no.verbose")
    cmd <- paste("aws machinelearning get-data-source",
                 ifelse(!is.null(data.source.id),paste("--data-source-id",data.source.id),""),
                 ifelse(verbose,"--verbose",""),
                 ifelse(no.verbose,"--no-verbose",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.get.evaluation <- function (evaluation.id=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning get-evaluation",
                 ifelse(!is.null(evaluation.id),paste("--evaluation-id",evaluation.id),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.get.ml.model <- function (ml.model.id=NULL,verbose=FALSE,no.verbose=FALSE,cli.input.json=NULL) {
    if(verbose && no.verbose) stop("please set either verbose or no.verbose")
    cmd <- paste("aws machinelearning get-ml-model",
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(verbose,"--verbose",""),
                 ifelse(no.verbose,"--no-verbose",""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.predict <- function (ml.model.id=NULL,record=NULL,predict.endpoint=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning predict",
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(!is.null(record),paste("--record",record),""),
                 ifelse(!is.null(predict.endpoint),paste("--predict-endpoint",predict.endpoint),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.update.batch.prediction <- function (batch.prediction.id=NULL,batch.prediction.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning update-batch-prediction",
                 ifelse(!is.null(batch.prediction.id),paste("--batch-prediction-id",batch.prediction.id),""),
                 ifelse(!is.null(batch.prediction.name),paste("--batch-prediction-name",batch.prediction.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.update.data.source <- function (data.source.id=NULL,data.source.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning update-data-source",
                 ifelse(!is.null(data.source.id),paste("--data-source-id",data.source.id),""),
                 ifelse(!is.null(data.source.name),paste("--data-source-name",data.source.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.update.evaluation <- function (evaluation.id=NULL,evaluation.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning update-evaluation",
                 ifelse(!is.null(evaluation.id),paste("--evaluation-id",evaluation.id),""),
                 ifelse(!is.null(evaluation.name),paste("--evaluation-name",evaluation.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
machinelearning.update.ml.model <- function (ml.model.id=NULL,ml.model.name=NULL,score.threshold=NULL,cli.input.json=NULL) {
    cmd <- paste("aws machinelearning update-ml-model",
                 ifelse(!is.null(ml.model.id),paste("--ml-model-id",ml.model.id),""),
                 ifelse(!is.null(ml.model.name),paste("--ml-model-name",ml.model.name),""),
                 ifelse(!is.null(score.threshold),paste("--score-threshold",score.threshold),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
