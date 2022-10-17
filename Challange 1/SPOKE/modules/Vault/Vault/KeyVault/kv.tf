
data "azurerm_client_config" "ADCS" {}

resource "azurerm_key_vault" "keyvault" {
  name                        = var.kvname
  location                    = var.location
  resource_group_name         = var.kvrgname
  enabled_for_disk_encryption = var.kvdiskencryption
  tenant_id                   = data.azurerm_client_config.ADCS.tenant_id
  soft_delete_retention_days  = var.kvsoftdelrentdays
  purge_protection_enabled    = var.kvpurgeprotectionenabled
  sku_name                    = var.kvskuname
  tags                        = var.tags
}