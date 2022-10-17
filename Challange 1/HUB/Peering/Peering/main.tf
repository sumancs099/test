  module "virtual_network_peering" {
  for_each = var.peers
  source  = "app.terraform.io/alliancedata/virtual-network-peering/azurerm"
  version = "1.1.6"

  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_name
  name                      = each.value.name
  remote_virtual_network_id = each.value.remote_virtual_network_id
  tags                      = var.nwtags
}