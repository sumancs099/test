# ----------------------------------------------------------------------------------------------------------------------
# DEPLOY PALO ALTO VM FIREWALLS
# ----------------------------------------------------------------------------------------------------------------------

# Note: Module version used varies across resources
###============================VPN03 / VPN 04 #######################


// ### VPN 03

module "vpn_paloalto_vm" {
  source  = "app.terraform.io/alliancedata/paloalto-vm/azurerm"
  version = "1.2.44"
  name = var.vpn3_vm_name
  resource_group_name = var.vpn3_resource_group_name
  location = var.vpn3_location

# network
  vnetname = var.vpn3_vnetname
  vnetrgname = var.vpn3_vnetrgname
  snname_priv = var.vpn3_snname_priv
  snname_mgmt = var.vpn3_snname_mgmt
  snname_pub = var.vpn3_snname_pub
  private_ip_address_mgmt = var.vpn3_private_ip_address_mgmt
  private_ip_address_trust = var.vpn3_private_ip_address_trust
  private_ip_address_untrust = var.vpn3_private_ip_address_untrust
  vnic_name_trust = var.vpn3_vnic_name_trust
  vnic_name_mgmt = var.vpn3_vnic_name_mgmt
  vnic_name_untrust = var.vpn3_vnic_name_untrust
  
### DOES IT CHANGE? ####

  zone = var.vpn3_zone

##### Variables below do not change
  private_ip_address_allocation = var.private_ip_address_allocation
  enable_ip_forwarding = var.enable_ip_forwarding
  enable_accelerated_networking = var.enable_accelerated_networking

# vm
  vmsize = var.vmsize
  license = var.license
  publisher = var.publisher
  username = var.username
  password = var.password
  product = var.product
  plan = var.plan
  caching = var.caching
  create_option = var.create_option
  managed_disk_type = var.managed_disk_type
  ver = var.ver
  tags = var.tags
  
# storage
  storageaccountname = var.storageaccountname
  storagergname = var.storagergname
  boot_diagnostics_enabled = var.boot_diagnostics_enabled
}

# ### VPN 04

module "vpn2_paloalto_vm" {
  source  = "app.terraform.io/alliancedata/paloalto-vm/azurerm"
  version = "1.2.44"
  name = var.vpn4_vm_name
  resource_group_name = var.vpn4_resource_group_name
  location = var.vpn4_location

# network
  vnetname = var.vpn4_vnetname
  vnetrgname = var.vpn4_vnetrgname
  snname_priv = var.vpn4_snname_priv
  snname_mgmt = var.vpn4_snname_mgmt
  snname_pub = var.vpn4_snname_pub
  private_ip_address_mgmt = var.vpn4_private_ip_address_mgmt
  private_ip_address_trust = var.vpn4_private_ip_address_trust
  private_ip_address_untrust = var.vpn4_private_ip_address_untrust
  vnic_name_trust = var.vpn4_vnic_name_trust
  vnic_name_mgmt = var.vpn4_vnic_name_mgmt
  vnic_name_untrust = var.vpn4_vnic_name_untrust
 
### DOES IT CHANGE? ####

  zone = var.vpn4_zone

##### Variables below do not change
  private_ip_address_allocation = var.private_ip_address_allocation
  enable_ip_forwarding = var.enable_ip_forwarding
  enable_accelerated_networking = var.enable_accelerated_networking

# vm
  vmsize = var.vmsize
  license = var.license
  publisher = var.publisher
  username = var.username
  password = var.password
  product = var.product
  plan = var.plan
  caching = var.caching
  create_option = var.create_option
  managed_disk_type = var.managed_disk_type
  ver = var.ver
  tags = var.tags
  
# storage
  storageaccountname = var.storageaccountname
  storagergname = var.storagergname
  boot_diagnostics_enabled = var.boot_diagnostics_enabled
}