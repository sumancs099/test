
data "azurerm_subnet" "sn" {
  name                 = var.snname
  virtual_network_name = var.vnetname
  resource_group_name  = var.nwrgname
}

data "azurerm_network_security_group" "nsg" {
    name = var.nsgname
    resource_group_name = var.nsgrgname
}


resource "azurerm_subnet_network_security_group_association" "nsgass" {
  subnet_id                 = data.azurerm_subnet.sn.id
  network_security_group_id = data.azurerm_network_security_group.nsg.id
  lifecycle {
    ignore_changes = all
  }
}