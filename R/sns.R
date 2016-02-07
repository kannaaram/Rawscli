sns.add.permission <- function (topic.arn=NULL,label=NULL,aws.account.id=NULL,action.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns add-permission",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(label),paste("--label",label),""),
                 ifelse(!is.null(aws.account.id),paste("--aws-account-id",aws.account.id),""),
                 ifelse(!is.null(action.name),paste("--action-name",action.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.confirm.subscription <- function (topic.arn=NULL,token=NULL,authenticate.on.unsubscribe=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns confirm-subscription",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(token),paste("--token",token),""),
                 ifelse(!is.null(authenticate.on.unsubscribe),paste("--authenticate-on-unsubscribe",authenticate.on.unsubscribe),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.create.platform.application <- function (name=NULL,platform=NULL,attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns create-platform-application",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(platform),paste("--platform",platform),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.create.platform.endpoint <- function (platform.application.arn=NULL,token=NULL,custom.user.data=NULL,attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns create-platform-endpoint",
                 ifelse(!is.null(platform.application.arn),paste("--platform-application-arn",platform.application.arn),""),
                 ifelse(!is.null(token),paste("--token",token),""),
                 ifelse(!is.null(custom.user.data),paste("--custom-user-data",custom.user.data),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.create.topic <- function (name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns create-topic",
                 ifelse(!is.null(name),paste("--name",name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.delete.endpoint <- function (endpoint.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns delete-endpoint",
                 ifelse(!is.null(endpoint.arn),paste("--endpoint-arn",endpoint.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.delete.platform.application <- function (platform.application.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns delete-platform-application",
                 ifelse(!is.null(platform.application.arn),paste("--platform-application-arn",platform.application.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.delete.topic <- function (topic.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns delete-topic",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.get.endpoint.attributes <- function (endpoint.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns get-endpoint-attributes",
                 ifelse(!is.null(endpoint.arn),paste("--endpoint-arn",endpoint.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.get.platform.application.attributes <- function (platform.application.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns get-platform-application-attributes",
                 ifelse(!is.null(platform.application.arn),paste("--platform-application-arn",platform.application.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.get.subscription.attributes <- function (subscription.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns get-subscription-attributes",
                 ifelse(!is.null(subscription.arn),paste("--subscription-arn",subscription.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.get.topic.attributes <- function (topic.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns get-topic-attributes",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.list.endpoints.by.platform.application <- function (platform.application.arn=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws sns list-endpoints-by-platform-application",
                 ifelse(!is.null(platform.application.arn),paste("--platform-application-arn",platform.application.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
sns.list.platform.applications <- function (cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws sns list-platform-applications",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
sns.list.subscriptions <- function (cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws sns list-subscriptions",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
sns.list.subscriptions.by.topic <- function (topic.arn=NULL,cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws sns list-subscriptions-by-topic",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
sns.list.topics <- function (cli.input.json=NULL,starting.token=NULL,max.items=NULL) {
    cmd <- paste("aws sns list-topics",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""),
                 ifelse(!is.null(starting.token),paste("--starting-token",starting.token),""),
                 ifelse(!is.null(max.items),paste("--max-items",max.items),""))
    system(cmd,intern=TRUE) 
}
sns.publish <- function (topic.arn=NULL,target.arn=NULL,message=NULL,subject=NULL,message.structure=NULL,message.attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns publish",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(target.arn),paste("--target-arn",target.arn),""),
                 ifelse(!is.null(message),paste("--message",message),""),
                 ifelse(!is.null(subject),paste("--subject",subject),""),
                 ifelse(!is.null(message.structure),paste("--message-structure",message.structure),""),
                 ifelse(!is.null(message.attributes),paste("--message-attributes",message.attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.remove.permission <- function (topic.arn=NULL,label=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns remove-permission",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(label),paste("--label",label),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.set.endpoint.attributes <- function (endpoint.arn=NULL,attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns set-endpoint-attributes",
                 ifelse(!is.null(endpoint.arn),paste("--endpoint-arn",endpoint.arn),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.set.platform.application.attributes <- function (platform.application.arn=NULL,attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns set-platform-application-attributes",
                 ifelse(!is.null(platform.application.arn),paste("--platform-application-arn",platform.application.arn),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.set.subscription.attributes <- function (subscription.arn=NULL,attribute.name=NULL,attribute.value=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns set-subscription-attributes",
                 ifelse(!is.null(subscription.arn),paste("--subscription-arn",subscription.arn),""),
                 ifelse(!is.null(attribute.name),paste("--attribute-name",attribute.name),""),
                 ifelse(!is.null(attribute.value),paste("--attribute-value",attribute.value),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.set.topic.attributes <- function (topic.arn=NULL,attribute.name=NULL,attribute.value=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns set-topic-attributes",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(attribute.name),paste("--attribute-name",attribute.name),""),
                 ifelse(!is.null(attribute.value),paste("--attribute-value",attribute.value),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.subscribe <- function (topic.arn=NULL,protocol=NULL,notification.endpoint=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns subscribe",
                 ifelse(!is.null(topic.arn),paste("--topic-arn",topic.arn),""),
                 ifelse(!is.null(protocol),paste("--protocol",protocol),""),
                 ifelse(!is.null(notification.endpoint),paste("--notification-endpoint",notification.endpoint),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
sns.unsubscribe <- function (subscription.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws sns unsubscribe",
                 ifelse(!is.null(subscription.arn),paste("--subscription-arn",subscription.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
