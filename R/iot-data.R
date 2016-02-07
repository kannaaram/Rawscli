iot-data.delete.thing.shadow <- function (thing.name=NULL,outfile=NULL) {
    cmd <- paste("aws iot-data delete-thing-shadow",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""))
    system(cmd,intern=TRUE) 
}
iot-data.get.thing.shadow <- function (thing.name=NULL,outfile=NULL) {
    cmd <- paste("aws iot-data get-thing-shadow",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""))
    system(cmd,intern=TRUE) 
}
iot-data.publish <- function (topic=NULL,qos=NULL,payload=NULL,cli.input.json=NULL) {
    cmd <- paste("aws iot-data publish",
                 ifelse(!is.null(topic),paste("--topic",topic),""),
                 ifelse(!is.null(qos),paste("--qos",qos),""),
                 ifelse(!is.null(payload),paste("--payload",payload),""),
                 ifelse(!is.null(cli.input.json),paste("--cli-input-json",cli.input.json),""))
    system(cmd,intern=TRUE) 
}
iot-data.update.thing.shadow <- function (thing.name=NULL,payload=NULL,outfile=NULL) {
    cmd <- paste("aws iot-data update-thing-shadow",
                 ifelse(!is.null(thing.name),paste("--thing-name",thing.name),""),
                 ifelse(!is.null(payload),paste("--payload",payload),""),
                 ifelse(!is.null(outfile),paste("--outfile",outfile),""))
    system(cmd,intern=TRUE) 
}
