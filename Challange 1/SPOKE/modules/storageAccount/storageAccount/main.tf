resource "azurerm_storage_account" "storage_account" {
  name                     = var.saname
  resource_group_name      = var.sargname
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = var.min_tls_version
  tags                     = var.satags
}

# resource "azurerm_storage_container" "example" {
#   name                  = "vhd"
#   storage_account_name  = azurerm_storage_account.example.name
#   container_access_type = "private"
# }

