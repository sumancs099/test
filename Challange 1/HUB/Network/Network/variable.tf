
variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}

############################### Virtual Network Variables

variable "dns_servers" {}

variable "location" {
  type = string
}
variable "nwrgname" {
  type = string
}
variable "nwtags" {
  type = map(string)
}
variable "virtual_network_name" {
  type = string
}


variable "vnet_address_space" {}
variable "virtual_network_ext_name" {
  type = string
}


variable "vnet_address_space_ext" {}

####################################### Common Network Policy variable

variable "network_policy_false" {
  type    = bool
  default = false
}
variable "network_policy_true" {
  type    = bool
  default = true
}

# Public Subnet Variables
variable "pub_subnet_name" {
  type = string
}
variable "pub_address_prefixes" {}
variable "pub_service_endpoints" {}

# VPN Subnet Variables
variable "vpn_subnet_name" {
  type = string
}
variable "vpn_address_prefixes" {}
variable "vpn_service_endpoints" {}

# Private Subnet Variables
variable "priv_subnet_name" {
  type = string
}
variable "priv_address_prefixes" {}
variable "priv_service_endpoints" {}

# Management Subnet Variables
variable "mgmt_subnet_name" {
  type = string
}
variable "mgmt_address_prefixes" {}
variable "mgmt_service_endpoints" {}

# Auth Subnet Variables
variable "auth_subnet_name" {
  type = string
}
variable "auth_address_prefixes" {}
variable "auth_service_endpoints" {}

# Security Subnet Variables
variable "sec_subnet_name" {
  type = string
}
variable "sec_address_prefixes" {}
variable "sec_service_endpoints" {}

# NET Subnet Variables
variable "net_subnet_name" {
  type = string
}
variable "net_address_prefixes" {}
variable "net_service_endpoints" {}

# Gateway Subnet Variables
variable "gw_subnet_name" {
  type = string
}
variable "gw_address_prefixes" {}
variable "gw_service_endpoints" {}

# PrivateEndPoint Subnet Variables
variable "pep_subnet_name" {
  type = string
}
variable "pep_address_prefixes" {}
variable "pep_service_endpoints" {}

# SharedService Subnet Variables
variable "ss_subnet_name" {
  type = string
}
variable "ss_address_prefixes" {}
variable "ss_service_endpoints" {}





