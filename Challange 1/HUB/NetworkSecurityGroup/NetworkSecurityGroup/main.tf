module "rg" {
  source   = "../../Terraform/Module/ResourceGroup"
  count    = length(var.rgname)
  rgname   = [var.rgname[count.index]]
  location = var.location
  tags     = var.rgtags
}


# #Network security group
 module "nsg" {
   source   = "../../Terraform/Module/NSG"
   count    = length(var.nsgname)
   nsgname  = [var.nsgname[count.index]]
   rgname   = var.secrgname
   location = var.location
   tags     = var.nsgtags
 }


===============================================================
# #NSG Association
 module "pubNSGassociate" {
   source     = "../../Terraform/Module/NSGAssociation"
   nsgname    = var.pubnsgname
   snname     = var.pubsnname
   vnetname   = data.azurerm_virtual_network.example.name
   nwrgname   = data.azurerm_virtual_network.example.resource_group_name
   nsgrgname  = var.secrgname
   #depends_on = [module.nsg, module.vnetint, module.subnetint]
 }


 module "VPNNSGassociate" {
   source    = "../../Terraform/Module/NSGAssociation"
   nsgname    = var.vpnnsgname
   snname     = var.vpnsnname
   vnetname   = data.azurerm_virtual_network.example.name
   nwrgname   = data.azurerm_virtual_network.example.resource_group_name
   nsgrgname  = var.secrgname
   #depends_on = [module.nsg, module.vnetint, module.subnetint]
 }


module "privNSGassociate" {
   source    = "../../Terraform/Module/NSGAssociation"
   nsgname    = var.privnsgname
   snname     = var.privsnname
   vnetname   = data.azurerm_virtual_network.example.name
   nwrgname   = data.azurerm_virtual_network.example.resource_group_name
   nsgrgname  = var.secrgname
   #depends_on = [module.nsg, module.vnetint, module.subnetint]
 }
module "mgmtNSGassociate" {
   source    = "../../Terraform/Module/NSGAssociation"
   nsgname    = var.mgmtnsgname
   snname     = var.mgmtsnname
   vnetname   = data.azurerm_virtual_network.example.name
   nwrgname   = data.azurerm_virtual_network.example.resource_group_name
   nsgrgname  = var.secrgname
   #depends_on = [module.nsg, module.vnetint, module.subnetint]
 }


module "secNSGassociate" {
   source    = "../../Terraform/Module/NSGAssociation"
   nsgname    = var.secnsgname
   snname     = var.secvsnname
   vnetname   = data.azurerm_virtual_network.example.name
   nwrgname   = data.azurerm_virtual_network.example.resource_group_name
   nsgrgname  = var.secrgname
   #depends_on = [module.nsg, module.vnetint, module.subnetint]
 }
 
 
 module "gatewayNSGassociate" {
   source    = "../../Terraform/Module/NSGAssociation"
   nsgname    = var.gatewayvnsgname
   snname     = var.gatewayvsnname
   vnetname   = data.azurerm_virtual_network.example.name
   nwrgname   = data.azurerm_virtual_network.example.resource_group_name
   nsgrgname  = var.secrgname
   #depends_on = [module.nsg, module.vnetint, module.subnetint]
 }

 module "pepNSGassociate" {
   source    = "../../Terraform/Module/NSGAssociation"
   nsgname    = var.pepvnsgname
   snname     = var.pepvsnname
   vnetname   = data.azurerm_virtual_network.example.name
   nwrgname   = data.azurerm_virtual_network.example.resource_group_name
   nsgrgname  = var.secrgname
   #depends_on = [module.nsg, module.vnetint, module.subnetint]
 }
