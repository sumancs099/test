

################# Resource Group #############################

rgname = ["rg-ads-ncus-analytics-prd-nw-001","rg-ads-ncus-analytics-prd-sec-001", "rg-ads-ncus-analytics-prd-mon-001", "rg-ads-ncus-analytics-prd-dr-001","rg-ads-ncus-analytics-prd-indico-001"]

rgtags = {
  "AppName"            = "indico"
  "Dept"               = "IT"

}

nwrgname   = "rg-ads-ncus-analytics-prd-nw-001"
secrgname  = "rg-ads-ncus-analytics-prd-sec-001"
monrgname = "rg-ads-ncus-analytics-prd-mon-001"
drrgname = "rg-ads-ncus-analytics-prd-dr-001"
kvrgname = "rg-ads-ncus-analytics-prd-sec-001"




#################subnet variables values #######################

appsnname   = "sn-ads-ncus-analytics-prd-app-001"
dbsnname = "sn-ads-ncus-analytics-prd-db-001"
intwebsnname = "sn-ads-ncus-analytics-prd-intweb-001"
pepsnname   = "sn-ads-ncus-analytics-prd-pep-001"
indicosnname = "sn-ads-ncus-analytics-prd-indico-001"



##############nsg variables values ##############################

intwebnsgname= "nsg-ads-ncus-analytics-prd-intweb-001"
dbnsgname = "nsg-ads-ncus-analytics-prd-db-001"
appnsgname = "nsg-ads-ncus-analytics-prd-app-001"
pepnsgname = "nsg-ads-ncus-analytics-prd-pep-001"
indiconsgname = "nsg-ads-ncus-analytics-prd-indico-001"

location   = "North Central US"


####################### Address Space for deployment

intvnetname    = "vnet-ads-ncus-analytics-int-prd-001"
intvnetaddress = ["10.37.208.0/20"]

intdns         = ["10.131.199.30", "10.131.199.31", "10.91.200.31", "10.91.200.30"]
vnettags = {

  "Dept"               = "IT"
  "Environment"        = "PRD"
  "DataClassification" = "Confidential"
  "Role"               = "Secret"
}

########################Enter Subnet names and Address Space ###########################



intsnname    = ["sn-ads-ncus-analytics-prd-app-001","sn-ads-ncus-analytics-prd-db-001","sn-ads-ncus-analytics-prd-intweb-001","sn-ads-ncus-analytics-prd-pep-001","sn-ads-ncus-analytics-prd-indico-001"]
intsnaddress = ["10.37.208.0/25","10.37.209.0/25","10.37.210.0/25","10.37.211.0/24","10.37.212.0/22"]

#serviceendpoint = ["Microsoft.EventHub","Microsoft.ServiceBus","Microsoft.Sql","Microsoft.Storage"]
#pepnetworkpolicy = false
svcendpoint = {
  sn-ads-ncus-analytics-prd-app-001 = []
  sn-ads-ncus-analytics-prd-db-001 = []
  sn-ads-ncus-analytics-prd-intweb-001=[]
  sn-ads-ncus-analytics-prd-pep-001=[]
  sn-ads-ncus-analytics-prd-indico-001=[]
}
svcnetworkpolicy = {
  sn-ads-ncus-analytics-prd-app-001 = false
  sn-ads-ncus-analytics-prd-db-001 = false
  sn-ads-ncus-analytics-prd-intweb-001= false
  sn-ads-ncus-analytics-prd-pep-001= false
  sn-ads-ncus-analytics-prd-indico-001=false
}
pepnetworkpolicy = {
  sn-ads-ncus-analytics-prd-app-001 = false
  sn-ads-ncus-analytics-prd-db-001 = false
  sn-ads-ncus-analytics-prd-intweb-001= false
  sn-ads-ncus-analytics-prd-pep-001= true
  sn-ads-ncus-analytics-prd-indico-001=false
} 


########################### Enter NSG details for deployment#####################################



nsgname = ["nsg-ads-ncus-analytics-prd-app-001","nsg-ads-ncus-analytics-prd-db-001","nsg-ads-ncus-analytics-prd-intweb-001","nsg-ads-ncus-analytics-prd-pep-001","nsg-ads-ncus-analytics-prd-indico-001"]
nsgtags = {
  "AppName"            = "Enterprise Azure Api Management-Partner and Merchants"
  "AppOwner"           = "Mark Pitstick"
  "appid"             = "APPID-289168"
  "BillTo"             = "ADS"
  "Dept"               = "IT"
  "Environment"        = "PRD"
  "DataClassification" = "Confidential"
  "Role"               = "Secret"
}



##############################Values for KeyVault#############################


kvname                   = "kvadsncusanalyticsprd01"
kvdiskencryption         = true
kvsoftdelrentdays        = "7"
kvpurgeprotectionenabled = true
kvskuname                = "standard"
location =   "North Central US"


kvtags = {
  "AppName"            = "indico"
  "SupportGroup"       = "ADCS.Cloud.Infrastructure"
  "DataClassification" = "Confidential"
  "Role"               = "Secret"
}


################################ Private end points ###########################

kvpepname                  = "pep-kv-ads-ncus-analytics-prd-001"
kvpeprgname                = "rg-ads-ncus-analytics-prd-sec-001"
kvpepsubnetname            = "sn-ads-ncus-analytics-prd-pep-001"
kvpepvnetname              = "vnet-ads-ncus-analytics-int-prd-001"
##nwrgname                  =  "rg-ads-ncus-analytics-prd-nw-001"
kvpepSubResourceName       = "vault"
kvIsManualConnectionForPeP = false
kvenable_pep               = true



###########################Enter Route Table #############################

analyticsprdrtname = "rt-ads-ncus-analytics-prd-int-001"
rttags = {
  
  "Dept"               = "IT"
  "Environment"        = "PRD"
  "DataClassification" = "Confidential"
  "Role"               = "Secret"
}


############################# Storage Account###################################

saname = "sasncusanalprdvmdiag01"
sargname = "rg-ads-ncus-analytics-prd-mon-001"
account_tier = "Standard"
account_replication_type = "LRS"
min_tls_version = "TLS1_2"
satags  = {
  "AppName"            = "Enterprise Azure Api Management-Partner and Merchants"
  "AppOwner"           = "Mark Pitstick"
  "appid"             = "APPID-289168"
  "BillTo"             = "ADS"
  "Dept"               = "IT"
  "Environment"        = "PRD"
  "SupportGroup"       = "ADCS.Cloud.Infrastructure"
  "DataClassification" = "Confidential"
  "Role"               = "Secret"
}

########################Storage Account Private Endpoint##############################

sapepname = "pep-sas-blob-ads-ncus-analytics-prd-001"  
sapeprgname = "rg-ads-ncus-analytics-prd-sec-001"
sapepsubnetname = "sn-ads-ncus-analytics-prd-pep-001"
sapepvnetname = "vnet-ads-ncus-analytics-int-prd-001"
sapepSubResourceName = "blob"
saIsManualConnectionForPeP = false
saenable_pep = true



