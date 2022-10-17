//--------------------------------------------------------------------
// Internal LB External Modules

module "int_load_balancer_ext" {
  source  = "app.terraform.io/alliancedata/load-balancer/azurerm"
  version = "1.6.0"

  backend_pool_name              = var.backend_pool_name
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  frontend_ip_configuration_ip = var.frontend_ip_configuration_ip
  subnet                         = var.subnet

  lb_name                     = var.intlb_name
  lb_probe_name               = var.lb_probe_name
  lb_rule_name                = var.lb_rule_name
  nic                         = var.nic
  
  lb_probe_port              = var.lb_probe_port
  lb_probe_be_port           = var.lb_probe_be_port
  lb_probe_fe_port           = var.lb_probe_fe_port
  frontend_ip_address_version = var.frontend_ip_address_version
  allocation_method          = var.allocation_method
  lb_rule_load_distribution  = var.lb_rule_load_distribution
  lb_rule_protocol           = var.lb_rule_protocol
  lb_sku                     = var.lb_sku
  region                     = var.region
  resource_group_name         = var.resource_group_name
  tags                       = var.tags
  vnet_name                  = var.vnet_name
  vnet_resource_group_name    = var.vnet_resource_group_name
}

//--------------------------------------------------------------------
// Internal LB Internal Modules

module "int_load_balancer_int" {
  source  = "app.terraform.io/alliancedata/int-load-balancer/azurerm"
  version = "2.2.1"

  backend_pool_name                 = var.backend_pool_name_01
  frontend_ip_configuration_name    = var.frontend_ip_configuration_name_01
  frontend_ip_configuration_ip      = var.frontend_ip_configuration_ip_01

  lb_name                     = var.intlb_name_01
  lb_rule_name                = var.lb_rule_name_01
  nic                         = var.nic_01
  subnet                      = var.subnet_01

  lb_probe_name               = var.lb_probe_name
  frontend_ip_address_version = var.frontend_ip_address_version
  allocation_method           = var.allocation_method
  lb_rule_load_distribution   = var.lb_rule_load_distribution
  lb_rule_protocol            = var.lb_rule_protocol
  lb_probe_be_port            = var.lb_probe_be_port
  lb_probe_fe_port            = var.lb_probe_fe_port
  lb_probe_port               = var.lb_probe_port
  lb_sku                      = var.lb_sku
  region                      = var.region
  resource_group_name         = var.resource_group_name
  tags                        = var.tags
  vnet_name                   = var.vnet_name
  vnet_resource_group_name    = var.vnet_resource_group_name

}
