marketplacecommerceanalytics.generate.data.set <- function (data.set.type=NULL,data.set.publication.date=NULL,role.name.arn=NULL,destination.s3.bucket.name=NULL,destination.s3.prefix=NULL,sns.topic.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws marketplacecommerceanalytics generate-data-set",
                 ifelse(!is.null(data.set.type),paste("--data-set-type",data.set.type),""),
                 ifelse(!is.null(data.set.publication.date),paste("--data-set-publication-date",data.set.publication.date),""),
                 ifelse(!is.null(role.name.arn),paste("--role-name-arn",role.name.arn),""),
                 ifelse(!is.null(destination.s3.bucket.name),paste("--destination-s3-bucket-name",destination.s3.bucket.name),""),
                 ifelse(!is.null(destination.s3.prefix),paste("--destination-s3-prefix",destination.s3.prefix),""),
                 ifelse(!is.null(sns.topic.arn),paste("--sns-topic-arn",sns.topic.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
