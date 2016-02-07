inspector.add.attributes.to.findings <- function (finding.arns=NULL,attributes=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector add-attributes-to-findings",
                 ifelse(!is.null(finding.arns),paste("--finding-arns",finding.arns),""),
                 ifelse(!is.null(attributes),paste("--attributes",attributes),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.attach.assessment.and.rules.package <- function (assessment.arn=NULL,rules.package.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector attach-assessment-and-rules-package",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(rules.package.arn),paste("--rules-package-arn",rules.package.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.create.application <- function (application.name=NULL,resource.group.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector create-application",
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(resource.group.arn),paste("--resource-group-arn",resource.group.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.create.assessment <- function (application.arn=NULL,assessment.name=NULL,duration.in.seconds=NULL,user.attributes.for.findings=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector create-assessment",
                 ifelse(!is.null(application.arn),paste("--application-arn",application.arn),""),
                 ifelse(!is.null(assessment.name),paste("--assessment-name",assessment.name),""),
                 ifelse(!is.null(duration.in.seconds),paste("--duration-in-seconds",duration.in.seconds),""),
                 ifelse(!is.null(user.attributes.for.findings),paste("--user-attributes-for-findings",user.attributes.for.findings),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.create.resource.group <- function (resource.group.tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector create-resource-group",
                 ifelse(!is.null(resource.group.tags),paste("--resource-group-tags",resource.group.tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.delete.application <- function (application.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector delete-application",
                 ifelse(!is.null(application.arn),paste("--application-arn",application.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.delete.assessment <- function (assessment.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector delete-assessment",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.delete.run <- function (run.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector delete-run",
                 ifelse(!is.null(run.arn),paste("--run-arn",run.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.describe.application <- function (application.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector describe-application",
                 ifelse(!is.null(application.arn),paste("--application-arn",application.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.describe.assessment <- function (assessment.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector describe-assessment",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.describe.cross.account.access.role <- function (cli.input.json=NULL) {
    cmd <- paste("aws inspector describe-cross-account-access-role",
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.describe.finding <- function (finding.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector describe-finding",
                 ifelse(!is.null(finding.arn),paste("--finding-arn",finding.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.describe.resource.group <- function (resource.group.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector describe-resource-group",
                 ifelse(!is.null(resource.group.arn),paste("--resource-group-arn",resource.group.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.describe.rules.package <- function (rules.package.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector describe-rules-package",
                 ifelse(!is.null(rules.package.arn),paste("--rules-package-arn",rules.package.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.describe.run <- function (run.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector describe-run",
                 ifelse(!is.null(run.arn),paste("--run-arn",run.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.detach.assessment.and.rules.package <- function (assessment.arn=NULL,rules.package.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector detach-assessment-and-rules-package",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(rules.package.arn),paste("--rules-package-arn",rules.package.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.get.assessment.telemetry <- function (assessment.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector get-assessment-telemetry",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.applications <- function (filter=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-applications",
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.assessment.agents <- function (assessment.arn=NULL,filter=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-assessment-agents",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.assessments <- function (application.arns=NULL,filter=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-assessments",
                 ifelse(!is.null(application.arns),paste("--application-arns",application.arns),""),
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.attached.assessments <- function (rules.package.arn=NULL,filter=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-attached-assessments",
                 ifelse(!is.null(rules.package.arn),paste("--rules-package-arn",rules.package.arn),""),
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.attached.rules.packages <- function (assessment.arn=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-attached-rules-packages",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.findings <- function (run.arns=NULL,filter=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-findings",
                 ifelse(!is.null(run.arns),paste("--run-arns",run.arns),""),
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.rules.packages <- function (next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-rules-packages",
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.runs <- function (assessment.arns=NULL,filter=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-runs",
                 ifelse(!is.null(assessment.arns),paste("--assessment-arns",assessment.arns),""),
                 ifelse(!is.null(filter),paste("--filter",filter),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.list.tags.for.resource <- function (resource.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector list-tags-for-resource",
                 ifelse(!is.null(resource.arn),paste("--resource-arn",resource.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.localize.text <- function (localized.texts=NULL,locale=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector localize-text",
                 ifelse(!is.null(localized.texts),paste("--localized-texts",localized.texts),""),
                 ifelse(!is.null(locale),paste("--locale",locale),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.preview.agents.for.resource.group <- function (resource.group.arn=NULL,next.token=NULL,max.results=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector preview-agents-for-resource-group",
                 ifelse(!is.null(resource.group.arn),paste("--resource-group-arn",resource.group.arn),""),
                 ifelse(!is.null(next.token),paste("--next-token",next.token),""),
                 ifelse(!is.null(max.results),paste("--max-results",max.results),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.register.cross.account.access.role <- function (role.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector register-cross-account-access-role",
                 ifelse(!is.null(role.arn),paste("--role-arn",role.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.remove.attributes.from.findings <- function (finding.arns=NULL,attribute.keys=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector remove-attributes-from-findings",
                 ifelse(!is.null(finding.arns),paste("--finding-arns",finding.arns),""),
                 ifelse(!is.null(attribute.keys),paste("--attribute-keys",attribute.keys),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.run.assessment <- function (assessment.arn=NULL,run.name=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector run-assessment",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(run.name),paste("--run-name",run.name),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.set.tags.for.resource <- function (resource.arn=NULL,tags=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector set-tags-for-resource",
                 ifelse(!is.null(resource.arn),paste("--resource-arn",resource.arn),""),
                 ifelse(!is.null(tags),paste("--tags",tags),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.start.data.collection <- function (assessment.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector start-data-collection",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.stop.data.collection <- function (assessment.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector stop-data-collection",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.update.application <- function (application.arn=NULL,application.name=NULL,resource.group.arn=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector update-application",
                 ifelse(!is.null(application.arn),paste("--application-arn",application.arn),""),
                 ifelse(!is.null(application.name),paste("--application-name",application.name),""),
                 ifelse(!is.null(resource.group.arn),paste("--resource-group-arn",resource.group.arn),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
inspector.update.assessment <- function (assessment.arn=NULL,assessment.name=NULL,duration.in.seconds=NULL,cli.input.json=NULL) {
    cmd <- paste("aws inspector update-assessment",
                 ifelse(!is.null(assessment.arn),paste("--assessment-arn",assessment.arn),""),
                 ifelse(!is.null(assessment.name),paste("--assessment-name",assessment.name),""),
                 ifelse(!is.null(duration.in.seconds),paste("--duration-in-seconds",duration.in.seconds),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
