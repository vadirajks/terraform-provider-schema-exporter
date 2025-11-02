resource "azurerm_key_vault_secret" "name" { // Ephemeral Resource
  key_vault_id = string (Required)
  name = string (Required)
  expiration_date = string (Computed)
  not_before_date = string (Computed)
  value = string (Computed)
  version = string (Optional, Computed)
}
