
resource "azurerm_virtual_network" "vnet" {

  name                = var.vnetname
  address_space       = var.vnetaddress
  resource_group_name = var.rgname
  location            = var.location
  dns_servers         = var.dns
  tags                = var.tags
}
