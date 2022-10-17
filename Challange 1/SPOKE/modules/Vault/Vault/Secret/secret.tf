data "azurerm_key_vault" "keyvault" {
    name = var.kvname
    resource_group_name = var.kvrgname
}

# resource "azurerm_key_vault_secret" "secret" {
#   name         = var.secretname
#   value        = var.secretvalue
#   key_vault_id = data.azurerm_key_vault.keyvault.id
# }

resource "azurerm_key_vault_secret" "secret" {
  for_each = var.secret
  name         = each.key
  value        = each.value
  key_vault_id = data.azurerm_key_vault.keyvault.id
}