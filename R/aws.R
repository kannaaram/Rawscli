###########################################################################
## Copyright (C) 2015  Whit Armstrong                                    ##
##                                                                       ##
## This program is free software: you can redistribute it and#or modify  ##
## it under the terms of the GNU General Public License as published by  ##
## the Free Software Foundation, either version 3 of the License, or     ##
## (at your option) any later version.                                   ##
##                                                                       ##
## This program is distributed in the hope that it will be useful,       ##
## but WITHOUT ANY WARRANTY; without even the implied warranty of        ##
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         ##
## GNU General Public License for more details.                          ##
##                                                                       ##
## You should have received a copy of the GNU General Public License     ##
## along with this program.  If not, see <http:##www.gnu.org#licenses#>. ##
###########################################################################

--debug (boolean)
--endpoint-url (string)
--no-verify-ssl (boolean)
--no-paginate (boolean)
--output (string)
--query (string)
--profile (string)
--region (string)
--version (string)
--color (string)
--no-sign-request (boolean)

.aws <- function(subcommand,debug=NULL,endpoint.url=NULL,no.verify.ssl=NULL,no.paginate=NULL,output=NULL,query=NULL,profile=NULL,region=NULL,version=NULL,color=NULL,no.sign.request=NULL) {

    cmd <- paste("aws",
                 if(is.null(debug),"",paste("--debug",debug),""),
                 if(is.null(endpoint.url),"",paste("--endpoint-url",endpoint.url)),
                 if(is.null(no.verify.ssl),"",paste("--no-verify-ssl",no.verify.ssl)),
                 ## --no-paginate ## not supported
                 if(is.null(output),"",paste("--output",output)),
                 if(is.null(query),"",paste("--query",query)),
                 if(is.null(profile),"",paste("--profile",profile)),
                 if(is.null(region),"",paste("--region",region)),
                 ## --version ## not supported
                 ##--color ## not supported
                 if(is.null(no.sign.request),"",paste("--no-sign-request",no.sign.request))
                 )

    system(paste(cmd,subcommand),intern=TRUE)
}
