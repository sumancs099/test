

###################################### VPN PALO ALTO

# vnet/subnet references

variable "vpn3_location" {
  type = string
  description = "The location of the Palo Alto VM Firewall"
}

variable "vpn3_vnetname" {
  type = string
  description = "The Virtual Network name of the Palo Alto VM Firewall"
}

variable "vpn3_vnetrgname" {
  type = string
  description = "The Resource Group for the Virtual Network of the Palo Alto VM Firewall"
}

variable "vpn3_snname_mgmt" {
  type = string
  description = "The subnet name for the management interface of the Palo Alto VM Firewall"
}

variable "vpn3_snname_priv" {
  type = string
  description = "The subnet name for the private interface of the Palo Alto VM Firewall"
}

variable "vpn3_snname_pub" {
  type = string
  description = "The Subnet name for the public interface of the Palo Alto VM Firewall"
}

################################################# VM DETAILS

variable "vpn3_vm_name" {
  type = string
  description = "The name of the Palo Alto VM Firewall"
}

variable "vpn3_resource_group_name" {
  type = string
  description = "The Resource Group of the Palo Alto VM Firewall"
}

variable "vpn3_private_ip_address_mgmt" {
  type = string
  description = "The private IP address for management interface of the Palo Alto VM Firewall"
}

variable "vpn3_private_ip_address_trust" {
  type = string
  description = "The private IP address for trusted interface of the Palo Alto VM Firewall"
}

variable "vpn3_private_ip_address_untrust" {
  type = string
  description = "The private IP address for trusted interface of the Palo Alto VM Firewall"
}

variable "vpn3_vnic_name_mgmt" {
  type = string
  description = "The name for management interface of the Palo Alto VM Firewall"
}

variable "vpn3_vnic_name_trust" {
  type = string
  description = "The name for trust interface of the Palo Alto VM Firewall"
}

variable "vpn3_vnic_name_untrust" {
  type = string
  description = "The name for untrust interface of the Palo Alto VM Firewall"
  default = ""
}

variable "vpn3_ipconfig_name_untrust" {
  type = string
  description = "The name for untrust interface ipconfig of the Palo Alto VM Firewall"
}

################################################# VPN2 PALO ALTO

# vnet/subnet references

variable "vpn4_location" {
  type = string
  description = "The location of the Palo Alto VM Firewall"
}

variable "vpn4_vnetname" {
  type = string
  description = "The Virtual Network name of the Palo Alto VM Firewall"
}

variable "vpn4_vnetrgname" {
  type = string
  description = "The Resource Group for the Virtual Network of the Palo Alto VM Firewall"
}

variable "vpn4_snname_mgmt" {
  type = string
  description = "The subnet name for the management interface of the Palo Alto VM Firewall"
}

variable "vpn4_snname_priv" {
  type = string
  description = "The subnet name for the private interface of the Palo Alto VM Firewall"
}

variable "vpn4_snname_pub" {
  type = string
  description = "The Subnet name for the public interface of the Palo Alto VM Firewall"
}

########################################################### VM DETAILS

variable "vpn4_vm_name" {
  type = string
  description = "The name of the Palo Alto VM Firewall"
}

variable "vpn4_resource_group_name" {
  type = string
  description = "The Resource Group of the Palo Alto VM Firewall"
}

variable "vpn4_private_ip_address_mgmt" {
  type = string
  description = "The private IP address for management interface of the Palo Alto VM Firewall"
}

variable "vpn4_private_ip_address_trust" {
  type = string
  description = "The private IP address for trusted interface of the Palo Alto VM Firewall"
}

variable "vpn4_private_ip_address_untrust" {
  type = string
  description = "The private IP address for trusted interface of the Palo Alto VM Firewall"
}

variable "vpn4_vnic_name_mgmt" {
  type = string
  description = "The name for management interface of the Palo Alto VM Firewall"
}

variable "vpn4_vnic_name_trust" {
  type = string
  description = "The name for trust interface of the Palo Alto VM Firewall"
}

variable "vpn4_vnic_name_untrust" {
  type = string
  description = "The name for untrust interface of the Palo Alto VM Firewall"
  default = ""
}

variable "vpn4_ipconfig_name_untrust" {
  type = string
  description = "The name for untrust interface ipconfig of the Palo Alto VM Firewall"
}



variable "vpn3_zone" {
  type = list(string)
  description = "The zone of the Palo Alto VM Firewall"
}

variable "vpn4_zone" {
  type = list(string)
  description = "The zone of the Palo Alto VM Firewall"
}

# ----------------------------------------------------------------------------------------------------------------------
# REQUIRED COMMON VM PARAMETERS
# You must provide a value for each of these vm parameters.  They will be common across all vm's.
# ----------------------------------------------------------------------------------------------------------------------

variable "vmsize" {
  type = string
  description = "The compute size of the Palo Alto VM Firewall"
}

variable "license" {
  type = string
  description = "The license of the Palo Alto VM Firewall"
}

variable "product" {
  type = string
  description = "The license product code of the Palo Alto VM Firewall"
}

variable "plan" {
  type = string
  description = "The license plan of the Palo Alto VM Firewall"
}

variable "ver" {
  type = string
  description = "The operating version of the Palo Alto VM Firewall"
}

variable "tags" {
  type = map(string)
  description = "The Azure tags associated with the Palo Alto VM Firewall"
}

variable "caching" {
  type = string
  description = "The caching option for the Palo Alto VM Firewall"
}

variable "create_option" {
  type = string
  description = "The create option of the Palo Alto VM Firewall"
}

variable "managed_disk_type" {
  type = string
  description = "The managed disk type of the Palo Alto VM Firewall"
}

variable "publisher" {
  type    = string
  default = "paloaltonetworks"
  description = "The Publisher of the Palo Alto VM Firewall"
}

variable "private_ip_address_allocation" {
  type = string
  default = "static"
  description = "The IP address allocation method of the Palo Alto VM Firewall"
}

variable "enable_ip_forwarding" {
  type = bool
  description = "The option to enable IP Forwarding of the Palo Alto VM Firewall"
}

variable "enable_accelerated_networking" {
  type = bool
  description = "The option to enable accelerated networking for the Palo Alto VM Firewall"
}

variable "username" {
  type = string
  description = "The username for login to the Palo Alto VM Firewall"
}

variable "password" {
  type = string
  description = "The password for login to the Palo Alto VM Firewall"
}

############################################ STORAGE DETAILS

variable "storageaccountname"{
  type = string
  description = "The storage account name of the Palo Alto VM Firewall"
}

variable "storagergname"{
  type = string
  description = "The storage account resource group name of the Palo Alto VM Firewall"
}

variable "boot_diagnostics_enabled"{
  description = "Storage account type for boot diagnostics"
  type = bool
}



# Workspace global variables
variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}