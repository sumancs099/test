data "azurerm_subnet" "subnet" {
  name                 = var.pepsubnetname
  virtual_network_name = var.pepvnetname
  resource_group_name  = var.nwrgname
}
resource "azurerm_private_endpoint" "endpoint" {
  count               = var.enable_pep ? 1 : 0
  name                = var.pepname
  location            = var.location
  resource_group_name = var.peprgname
  subnet_id           = data.azurerm_subnet.subnet.id
  private_service_connection {
    name                           = var.pepname
    private_connection_resource_id = var.resourceid
    is_manual_connection           = var.IsManualConnectionForPeP
    subresource_names              = [var.pepSubResourceName]
  }
  tags = var.tags
  lifecycle {
    ignore_changes = all
  }
}