################## RESOURCE GROUP VARIABLES

variable "rgname" {
 type = list(string)
 }
variable "rgtags" {
  type = map(string)
}

variable "nwrgname" {}
variable "secrgname" {}
variable "monrgname" {}
variable "drrgname" {}
variable "kvrgname"{}



#################### NETWORK VARIABLES FOR DEPLOYMENT

variable "intvnetname" {}
variable "intvnetaddress" {}

variable "intsnname" {
  type = list(string)
}
variable "intsnaddress" {
  type = list(string)
}




variable "intdns" {}
variable "vnettags" {
  type = map(string)
}


######################## NETWORK SECURITY GROUP VARIABLES FOR DEPLOYMENT

variable "nsgname" {
  type = list(string)
}
variable "nsgtags" {
  type = map(string)
}


########################### VARIABLES FOR KEYVAULT

variable "kvname" {
  type = string
}
variable "kvdiskencryption" {
  type = bool
}
variable "kvsoftdelrentdays" {}

variable "kvpurgeprotectionenabled" {}

variable "kvskuname" {}

variable "kvtags" {
  type = map(string)
  }


variable "location" {}




################################# PRIVATE END POINT

variable "kvpepname" {}
variable "kvpeprgname" {}
variable "kvpepsubnetname" {}
variable "kvpepvnetname" {}
variable "kvpepSubResourceName" {}
variable "kvIsManualConnectionForPeP" {}
variable "kvenable_pep" {
  description = "If set to true, enable PrivateEndPoint"
  type        = bool
  default     = true
}

################################## ROUTE TABLE VARIABLES FOR DEPLOYMENT AND REFERENCE

variable "analyticsprdrtname" {}
variable "rttags" {
  type = map(string)
}


###################################### KEY VAULT ACCESS POLICY FOR CLOUD GLOBAL OWNER



variable "cloudowner_objectid" {
  type        = string
  description = "User or Group Ad Object ID"
}
variable "cloudowner_keypermissions" {
  type        = list(string)
  description = "List of Key Permissions"
}
variable "cloudowner_secretpermissions" {
  type        = list(string)
  description = "List of Secret Permission"
}
variable "cloudowner_storagepermissions" {
  type        = list(string)
  description = "List of Storage Permission"
}
variable "cloudowner_certificatepermissions" {
  type        = list(string)
  description = "List of Certificate Permission"
}


###########################################SPN VARIABLES



variable "subscription_id" {
  type = string
}
variable "tenant_id" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}



variable "svcendpoint" {
  type = map(any)
}
variable "svcnetworkpolicy" {
  type = map(bool)
}
variable "pepnetworkpolicy" {
  type = map(bool)
}

######################################### NETWORK SECURITY GROUP VARIABLES FOR REFERENCE


variable "appnsgname" {}
variable "dbnsgname" {}
variable "intwebnsgname" {}
variable "pepnsgname" {}
variable "indiconsgname" {}

################################## VARIABLE SUBNET 



 variable "appsnname" {}
 variable "dbsnname" {}
 variable "intwebsnname" {}
 variable "pepsnname" {}
 variable "indicosnname" {}


##################################STORAGE ACCOUNT VARIABLE



variable "saname" {
    type = string
    description = "Storage Account Name"
}

variable "sargname" {
  type = string
}

variable "account_tier" {
    type = string
    description = "Storage Account Tier"
}

variable "account_replication_type" {
    type = string
    description = "Storage Account Replication Type"
}

variable "min_tls_version" {
    type = string
    description = "Minimum TLS Version"
}

variable "satags" {
    type = map(string)
    description = "Storage Account Tags"
}




###############################################STORAGE ACCOUNT PRIVATE ENDPOINT



variable "sapepname" {}
variable "sapeprgname" {}
variable "sapepsubnetname" {}
variable "sapepvnetname" {}
variable "sapepSubResourceName" {}
variable "saIsManualConnectionForPeP" {}
variable "saenable_pep" {
  description = "If set to true, enable PrivateEndPoint"
  type        = bool
  default     = true
}






