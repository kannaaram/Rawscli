.onAttach <- function(libname, pkgname) {
    if(Sys.getenv("AWSACCESSKEY") == "") {
        packageStartupMessage("AWSACCESSKEY not found in env variables.")
    }
    if(Sys.getenv("AWSSECRETKEY") == "") {
        packageStartupMessage("AWSSECRETKEY not found in env variables.")
    }
    if(Sys.getenv("EC2_HOME") == "") {
        packageStartupMessage("EC2_HOME not found in env variables.")
    }
}
