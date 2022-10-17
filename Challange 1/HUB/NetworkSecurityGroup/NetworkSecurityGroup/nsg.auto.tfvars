

location = "centralus"
rg_name      = "rg-ads-cus-core-nonprd-sec-001"
vnet_rg_name = "rg-ads-cus-core-nonprd-nw-001"
tags = {
    "AppID"              = "Network"
    "SupportGroup"       = "ADCS.Cloud.Infrastructure"
    "Role"               = "CORE"
    "Environment"        = "nonprd"
    "DataClassification" = "Confidential"
    "BillTo"             = "ADS"
}
location = "East US 2"

rgname = ["rg-ads-eus2-edh-preprd-sec-001"]
rgtags = {
  
  "SupportGroup"       = "ADCS.Cloud.Infrastructure"
  "DataClassification" = "Confidential"
  "Role"               = "Secret"
}

# Resource Group Name and location for reference


secrgname     = "rg-ads-eus2-edh-preprd-sec-001"



nsgname =["nsg-pub","nsg-vpn","nsg-priv","nsg-mgmt","nsg-sec","nsg-net","nsg-gateway]
pubnsgname= "nsg-pub"
vpnnsgname = "nsg-vpn"
mgmtnsgname = "nsg-mgmt"
secnsgname = "nsg-sec"
gatewaynsgname="nsg-gateway"

 nsgtags = {
  
   "Dept"               = "IT"
   "Environment"        = "PROD"
   "SupportGroup"       = "Cloud.Infrastructure"
  
 }

