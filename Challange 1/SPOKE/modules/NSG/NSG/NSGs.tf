resource "azurerm_network_security_group" "nsg"{
    count = length(var.nsgname)
    name = var.nsgname[count.index]
    resource_group_name = var.rgname
    location = var.location
    tags = var.tags
}