resource "azurerm_resource_group" "rg" {
  count    = length(var.rgname)
  name     = var.rgname[count.index]
  location = var.location
  tags     = var.tags
}
