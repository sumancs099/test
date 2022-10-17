//--------------------------------------------------------------------
// Modules
module "ext_load_balancer" {
 source  = "app.terraform.io/alliancedata/ext-load-balancer/azurerm"
  version = "1.1.4"

  allocation_method       = var.allocation_method
  be_pool_name            = var.be_pool_name
  extlb_name              = var.extlb_name
  frontendname            = var.frontendname
  enable_floating_ip      = var.enable_floating_ip

  be_pool_name_fmc        = var.be_pool_name_fmc
  frontendname_fmc        = var.frontendname_fmc
  public_ip_name_fmc      = var.public_ip_name_fmc
  lb_rule_name_fmc        = var.lb_rule_name_fmc
  enable_floating_ip_fmc      = var.enable_floating_ip_fmc

  be_pool_name_fmc_sit        = var.be_pool_name_fmc_sit
  frontendname_fmc_sit       = var.frontendname_fmc_sit
  public_ip_name_fmc_sit      = var.public_ip_name_fmc_sit
  lb_rule_name_fmc_sit        = var.lb_rule_name_fmc_sit
  enable_floating_ip_fmc_sit      = var.enable_floating_ip_fmc_sit

  lb_probe_name           = var.lb_probe_name
  lb_probe_port           = var.lb_probe_port
  lb_rule_name            = var.lb_rule_name
  lb_rule_protocol        = var.lb_rule_protocol
  lb_rule_be_port        = var.lb_rule_be_port
  lb_rule_fe_port        = var.lb_rule_fe_port
  lb_sku                  = var.lb_sku
  public_ip_name          = var.public_ip_name
  region                  = var.region
  resource_group_name     = var.resource_group_name
  tags                    = var.tags
  nic                     = var.nic


  ##### NOT NEEDED
  // lb_probe_be_port        = var.lb_probe_be_port
  // lb_probe_fe_port        = var.lb_probe_fe_port
  vnet_resource_group_name = var.vnet_resource_group_name
  subnet_name              = var.subnet_name
  vnet_name                = var.vnet_name
  
}