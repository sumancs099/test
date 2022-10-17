
module "rg" {
  source   = "../../Terraform/Module/ResourceGroup"
  count    = length(var.rgname)
  rgname   = [var.rgname[count.index]]
  location = var.location
  tags     = var.rgtags
}


############################INTERNAL NETWORK


module "vnetint" {
  source      = "../../Terraform/Module/VNet"
  vnetname    = var.intvnetname
  vnetaddress = var.intvnetaddress
  rgname      = var.nwrgname
  location    = var.location
  dns         = var.intdns
  tags        = var.vnettags
  depends_on  = [module.rg]
}

module "subnetint" {
  source    = "../../Terraform/Module/Subnet"
  count     = length(var.intsnname)
  vnetname  = var.intvnetname
  snname    = [var.intsnname[count.index]]
  snaddress = [var.intsnaddress[count.index]]
  rgname    = var.nwrgname
  svcendpoint      = var.svcendpoint
  svcnetworkpolicy = var.svcnetworkpolicy
   pepnetworkpolicy = var.pepnetworkpolicy
  depends_on       = [module.vnetint, module.rg]
}

################################NETWORK SECURITY GROUP


module "nsg" {
  source   = "../../Terraform/Module/NSG"
  count    = length(var.nsgname)
  nsgname  = [var.nsgname[count.index]]
  rgname   = var.secrgname
  location = var.location
  tags     = var.nsgtags
}

################################NSG ASSOCIATION



module "appNSGassociate" {
  source     = "../../Terraform/Module/NSGAssociation"
  nsgname    = var.appnsgname
  snname     = var.appsnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  nsgrgname  = var.secrgname
  depends_on = [module.nsg, module.vnetint, module.subnetint]
}

module "dbNSGassociate" {
  source     = "../../Terraform/Module/NSGAssociation"
  nsgname    = var.dbnsgname
  snname     = var.dbsnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  nsgrgname  = var.secrgname
  depends_on = [module.nsg, module.vnetint, module.subnetint]
}

module "intwebNSGassociate" {
  source     = "../../Terraform/Module/NSGAssociation"
  nsgname    = var.intwebnsgname
  snname     = var.intwebsnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  nsgrgname  = var.secrgname
  depends_on = [module.nsg, module.vnetint, module.subnetint]
}

module "pepNSGassociate" {
  source     = "../../Terraform/Module/NSGAssociation"
  nsgname    = var.pepnsgname
  snname     = var.pepsnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  nsgrgname  = var.secrgname
  depends_on = [module.nsg, module.vnetint, module.subnetint]
}

module "indicoNSGassociate" {
  source     = "../../Terraform/Module/NSGAssociation"
  nsgname    = var.indiconsgname
  snname     = var.indicosnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  nsgrgname  = var.secrgname
  depends_on = [module.nsg, module.vnetint, module.subnetint]
}



########################################KEYVAULT


module "kv" {
  source                   = "../../Terraform/Module/Vault/KeyVault"
  kvname                   = var.kvname
  kvrgname                 = var.kvrgname
  location                 = var.location
  kvdiskencryption         = var.kvdiskencryption
  kvsoftdelrentdays        = var.kvsoftdelrentdays
  kvpurgeprotectionenabled = var.kvpurgeprotectionenabled
  kvskuname                = var.kvskuname
  tags                     = var.kvtags
  depends_on  = [module.subnetint,module.vnetint]
}



 module "kv_privateendpoint" {
  source                   = "../../Terraform/Module/PrivateEndPoint"
  pepname                  = var.kvpepname
  location                 = var.location
  peprgname                = var.kvpeprgname
  pepsubnetname            = var.kvpepsubnetname
  pepvnetname              = var.kvpepvnetname
  nwrgname                 = var.nwrgname
  resourceid               = module.kv.keyvaultid
  pepSubResourceName       = var.kvpepSubResourceName
  IsManualConnectionForPeP = var.kvIsManualConnectionForPeP
  enable_pep               = var.kvenable_pep
  tags                     = var.kvtags
}





###############################################MODULES TO ROUTE TABLE





module "intrt" {
  source   = "../../Terraform/Module/RouteTable"
  rtname   = var.analyticsprdrtname
  rgname   = var.nwrgname
  location = var.location
  tags     = var.rttags
  depends_on  = [module.rg]
}




#############################################ROUTE TABLE ASSOCIATION



module "appRTassociate" {
  source     = "../../Terraform/Module/RTAssociation"
  rtname     = var.analyticsprdrtname
  snname     = var.appsnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  rtrgname   = var.nwrgname
  depends_on = [module.intrt, module.subnetint]
}

# #Route Table Association
module "dbRTassociate" {
  source     = "../../Terraform/Module/RTAssociation"
  rtname     = var.analyticsprdrtname
  snname     = var.dbsnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  rtrgname   = var.nwrgname
  depends_on = [module.intrt, module.subnetint]
}

# #Route Table Association
module "intwebRTassociate" {
  source     = "../../Terraform/Module/RTAssociation"
  rtname     = var.analyticsprdrtname
  snname     = var.intwebsnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  rtrgname   = var.nwrgname
  depends_on = [module.intrt, module.subnetint]
}

# #Route Table Association  pep
module "pepRTassociate" {
  source     = "../../Terraform/Module/RTAssociation"
  rtname     = var.analyticsprdrtname
  snname     = var.pepsnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  rtrgname   = var.nwrgname
  depends_on = [module.intrt, module.subnetint]
}

# #Route Table Association  pep
module "indicoRTassociate" {
  source     = "../../Terraform/Module/RTAssociation"
  rtname     = var.analyticsprdrtname
  snname     = var.indicosnname
  vnetname   = var.intvnetname
  nwrgname   = var.nwrgname
  rtrgname   = var.nwrgname
  depends_on = [module.intrt, module.subnetint]
}


######################################################## STORAGE ACCOUNT


module "azurerm_storage_account" {
  source                   = "../../Terraform/Module/storageAccount"
  saname                   = var.saname
  sargname                 = var.sargname
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = var.min_tls_version
  satags                   = var.satags
}

#Storage Account Private Endpoint
module "sa_privateendpoint" {
  source                   = "../../Terraform/Module/PrivateEndPoint"
  pepname                  = var.sapepname
  location                 = var.location
  peprgname                = var.sapeprgname
  pepsubnetname            = var.sapepsubnetname
  pepvnetname              = var.sapepvnetname
  nwrgname                 = var.nwrgname
  resourceid               = module.azurerm_storage_account.storageaccount_id
  pepSubResourceName       = var.sapepSubResourceName
  IsManualConnectionForPeP = var.saIsManualConnectionForPeP
  enable_pep               = var.saenable_pep
  tags                     = var.satags
  depends_on               = [module.subnetint]
}

#######################NSG RULEs   ################################


resource "azurerm_network_security_rule" "App_QualysScan" {
  name                        = "QualysScan"
  priority                    = "2500"
  direction                   = "inbound"
  access                      = "allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefixes     = ["10.131.192.23", "10.131.192.72", "10.91.192.26", "10.92.192.36", "10.91.192.65"]
  destination_address_prefix  = "*"
  resource_group_name         = var.secrgname
  network_security_group_name = var.appnsgname
}

resource "azurerm_network_security_rule" "db_QualysScan" {
  name                        = "QualysScan"
  priority                    = "2500"
  direction                   = "inbound"
  access                      = "allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefixes     = ["10.131.192.23", "10.131.192.72", "10.91.192.26", "10.92.192.36", "10.91.192.65"]
  destination_address_prefix  = "*"
  resource_group_name         = var.secrgname
  network_security_group_name = var.dbnsgname
}

resource "azurerm_network_security_rule" "intweb_QualysScan" {
  name                        = "QualysScan"
  priority                    = "2500"
  direction                   = "inbound"
  access                      = "allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefixes     = ["10.131.192.23", "10.131.192.72", "10.91.192.26", "10.92.192.36", "10.91.192.65"]
  destination_address_prefix  = "*"
  resource_group_name         = var.secrgname
  network_security_group_name = var.intwebnsgname
}

resource "azurerm_network_security_rule" "pep_QualysScan" {
  name                        = "QualysScan"
  priority                    = "2500"
  direction                   = "inbound"
  access                      = "allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefixes     = ["10.131.192.23", "10.131.192.72", "10.91.192.26", "10.92.192.36", "10.91.192.65"]
  destination_address_prefix  = "*"
  resource_group_name         = var.secrgname
  network_security_group_name = var.pepnsgname
}

resource "azurerm_network_security_rule" "indico_QualysScan" {
  name                        = "QualysScan"
  priority                    = "2500"
  direction                   = "inbound"
  access                      = "allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefixes     = ["10.131.192.23", "10.131.192.72", "10.91.192.26", "10.92.192.36", "10.91.192.65"]
  destination_address_prefix  = "*"
  resource_group_name         = var.secrgname
  network_security_group_name = var.indiconsgname
}









###########################################################################################################

# #Network security group
# module "nsg" {
#   source   = "../../Terraform/Module/NSG"
#   count    = length(var.nsgname)
#   nsgname  = [var.nsgname[count.index]]
#   rgname   = var.secrgname
#   location = var.location
#   tags     = var.nsgtags
# }

# #Modules to Route Table
# module "intrt" {
#   source   = "../../Terraform/Module/RouteTable"
#   rtname   = var.apimrtname
#   rgname   = var.nwrgname
#   location = var.location
#   tags     = var.rttags
# }

# #NSG Association
# module "NSGassociate" {
#   source     = "../../Terraform/Module/NSGAssociation"
#   nsgname    = var.apimnsgname
#   snname     = var.apimsnname
#   vnetname   = var.intvnetname
#   nwrgname   = var.nwrgname
#   nsgrgname  = var.secrgname
#   depends_on = [module.nsg, module.vnetint, module.subnetint]
# }



# module "NSGassociate02" {
#   source     = "../../Terraform/Module/NSGAssociation"
#   nsgname    = var.apimnsgname
#   snname     = var.apimsnname02
#   vnetname   = var.intvnetname
#   nwrgname   = var.nwrgname
#   nsgrgname  = var.secrgname
#   depends_on = [module.nsg, module.vnetint, module.subnetint]
# }

# #Route Table Association
# module "RTassociate02" {
#   source     = "../../Terraform/Module/RTAssociation"
#   rtname     = var.apimrtname
#   snname     = var.apimsnname02
#   vnetname   = var.intvnetname
#   nwrgname   = var.nwrgname
#   rtrgname   = var.nwrgname
#   depends_on = [module.intrt, module.subnetint]
# }


# module "Res-Cloud_Global_Owner_kvaccess" {
#   source                 = "../../Terraform/Module/Vault/AccessPolicy"
#   kvname                 = var.kvname
#   kvrgname               = var.indicorgname
#   objectid               = var.cloudowner_objectid
#   keypermissions         = var.cloudowner_keypermissions
#   secretpermissions      = var.cloudowner_secretpermissions
#   storagepermissions     = var.cloudowner_storagepermissions
#   certificatepermissions = var.cloudowner_certificatepermissions
#   depends_on             = [module.kv]
# }

# module "Kieran_Maltz_kvaccess" {
#   source                 = "../../Terraform/Module/Vault/AccessPolicy"
#   kvname                 = var.kvname
#   kvrgname               = var.apimrgname
#   objectid               = var.kieran_objectid
#   keypermissions         = var.kieran_keypermissions
#   secretpermissions      = var.kieran_secretpermissions
#   storagepermissions     = var.kieran_storagepermissions
#   certificatepermissions = var.kieran_certificatepermissions
#   depends_on             = [module.kv]
# }


# data "azurerm_client_config" "spn_iac_entbusops_prd" {}
# module "svcconn_kvaccess" {
#   source                 = "../../Terraform/Module/Vault/AccessPolicy"
#   kvname                 = var.kvname
#   kvrgname               = var.apimrgname
#   objectid               = data.azurerm_client_config.spn_iac_entbusops_prd.object_id
#   keypermissions         = var.svcconn_keypermissions
#   secretpermissions      = var.svcconn_secretpermissions
#   storagepermissions     = var.svcconn_storagepermissions
#   certificatepermissions = var.svcconn_certificatepermissions
#   depends_on             = [module.kv]
# }



#