# ----------------------------------------------------------------------------------------------------------------------
# DATA SOURCES
# ----------------------------------------------------------------------------------------------------------------------

data "azurerm_subnet" "sn" {
  name                 = var.sn_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.vnet_rg_name
}

data "azurerm_network_security_group" "nsg" {
    name = var.nsg_name
    resource_group_name = var.nsg_rg_name
}

# ----------------------------------------------------------------------------------------------------------------------
# NETWORK SECURITY GROUP ASSOCIATION
# ----------------------------------------------------------------------------------------------------------------------

resource "azurerm_subnet_network_security_group_association" "nsg_assoc" {
  subnet_id                 = data.azurerm_subnet.sn.id
  network_security_group_id = data.azurerm_network_security_group.nsg.id
  lifecycle {
    ignore_changes = all
  }
}