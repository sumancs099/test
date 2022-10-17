
module "virtual_network" {
  source  = "app.terraform.io/Virtual-Network/azurerm"
  version = "1.0.0"
  
  dns_servers          = var.dns_servers
  location             = var.location
  resource_group_name  = var.nwrgname
  tags                 = var.nwtags
  virtual_network_name  = var.virtual_network_name
  vnet_address_space   = var.vnet_address_space
}

module "virtual_network_ext" {
  source  = "app.terraform.io/Virtual-Network/azurerm"
  version = "1.0.0"
  
  dns_servers          = var.dns_servers
  location             = var.location
  resource_group_name  = var.nwrgname
  tags                 = var.nwtags
  virtual_network_name  = var.virtual_network_ext_name
  vnet_address_space   = var.vnet_address_space_ext
}

 
module "pub_subnet" {
  source  = "app.terraform.io/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.pub_subnet_name
  address_prefixes                               = var.pub_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.pub_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}

module "vpn_subnet" {
  source  = "app.terraform.io/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.vpn_subnet_name
  address_prefixes                               = var.vpn_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.vpn_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}

module "priv_subnet" {
  source  = "app.terraform.io/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.priv_subnet_name
  address_prefixes                               = var.priv_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.priv_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}

module "mgmt_subnet" {
  source  = "app.terraform.io/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.mgmt_subnet_name
  address_prefixes                               = var.mgmt_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.mgmt_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}


module "sec_subnet" {
  source  = "app.terraform.io/alliancedata/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.sec_subnet_name
  address_prefixes                               = var.sec_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.sec_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}

module "net_subnet" {
  source  = "app.terraform.io/alliancedata/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.net_subnet_name
  address_prefixes                               = var.net_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.net_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}

module "gateway_subnet" {
  source  = "app.terraform.io/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.gw_subnet_name
  address_prefixes                               = var.gw_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.gw_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}

module "pep_subnet" {
  source  = "app.terraform.io/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.pep_subnet_name
  address_prefixes                               = var.pep_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.pep_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}

module "sharedservice_subnet" {
  source  = "app.terraform.io/alliancedata/Subnet/azurerm"
  version = "1.0.1"

  subnet_name                                    = var.ss_subnet_name
  address_prefixes                               = var.ss_address_prefixes
  resource_group_name                            = var.nwrgname
  enforce_private_link_endpoint_network_policies = var.network_policy_false
  enforce_private_link_service_network_policies  = var.network_policy_false
  service_endpoints                              = var.ss_service_endpoints
  virtual_network_name                           = var.virtual_network_name
}


