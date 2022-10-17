#-----------------------------------------------------------------------------------------------------------------------
# VARIABLES
#-----------------------------------------------------------------------------------------------------------------------

########### VPN03 / VPN 04 ##################

# VPN 03 vm
vpn3_vm_name = "Azure-CUS-VPN-EF03"
vpn3_location = "Central US"
vpn3_resource_group_name = "rg-ads-cus-core-prd-ngfw-001"
vpn3_vnetname = "vnet-ads-cus-core-prd-001"
vpn3_vnetrgname = "rg-ads-cus-core-prd-nw-001"
vpn3_snrgname = "rg-ads-cus-core-prd-nw-001"

vpn3_snname_priv = "sn-ads-cus-core-prd-priv-001"
vpn3_snname_mgmt = "sn-ads-cus-core-prd-mgmt-001"
vpn3_snname_pub = "sn-ads-cus-core-prd-vpn-001"

vpn3_ipconfig_name_untrust = "ipconfig-vpn"
vpn3_private_ip_address_mgmt = "10.37.132.10"
vpn3_private_ip_address_trust = "10.37.131.10"
vpn3_private_ip_address_untrust = "10.37.130.10"

vpn3_vnic_name_mgmt = "nic-Azure-CUS-VPN-EF03-mgmt"
vpn3_vnic_name_trust = "nic-Azure-CUS-VPN-EF03-trust"
vpn3_vnic_name_untrust = "nic-Azure-CUS-VPN-EF03-vpn"
vpn3_zone = ["1"]

# VPN 04 vm

vpn4_vm_name = "Azure--CUS-VPN-EF04"
vpn4_location = "Central US"
vpn4_resource_group_name = "rg-ads-cus-core-prd-ngfw-001"
vpn4_vnetname = "vnet-ads-cus-core-prd-001"
vpn4_vnetrgname = "rg-ads-cus-core-prd-nw-001"
vpn4_snrgname = "rg-ads-cus-core-prd-nw-001"

vpn4_snname_priv = "sn-ads-cus-core-prd-priv-001"
vpn4_snname_mgmt = "sn-ads-cus-core-prd-mgmt-001"
vpn4_snname_pub = "sn-ads-cus-core-prd-vpn-001"
vpn4_ipconfig_name_untrust = "ipconfig-vpn"
vpn4_private_ip_address_mgmt = "10.37.132.11"
vpn4_private_ip_address_trust = "10.37.131.11"
vpn4_private_ip_address_untrust = "10.37.130.11"

vpn4_vnic_name_mgmt = "nic-Azure-CUS-VPN-EF04-mgmt"
vpn4_vnic_name_trust = "nic-Azure-CUS-VPN-EF04-trust"
vpn4_vnic_name_untrust = "nic-Azure-CUS-VPN-EF04-vpn"
vpn4_zone = ["2"]


#################### VPN03 / VPN 04 ##################



# vm
vmsize = "Standard_D16s_v4"
license = "byol"
publisher = "paloaltonetworks"
username = "paloadmin"
password = "Columbus2022"
product = "vmseries-flex"
plan = "VM-Series Next Generation Firewall (BYOL and ELA)"
caching = "ReadWrite"
create_option = "FromImage"
managed_disk_type = "Standard_LRS"
ver = "10.0.6"
tags = {
  "AppID"              = "paloalto"
  "SupportGroup"       = "ADCS.Cloud.Infrastructure"
  "Role"               = "FW"
  "Environment"        = "nonprd"
  "DataClassification" = "Confidential"
}

# parameters
enable_accelerated_networking = false
enable_ip_forwarding = true
private_ip_address_allocation = "static"

# storage  
storageaccountname = "sascuscoreprdvmdia01"
storagergname = "rg-ads-cus-core-prd-mon-001"
boot_diagnostics_enabled = true
