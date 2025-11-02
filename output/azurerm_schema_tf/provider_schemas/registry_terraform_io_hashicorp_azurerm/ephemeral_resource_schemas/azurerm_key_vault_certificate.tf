resource "azurerm_key_vault_certificate" "name" { // Ephemeral Resource
  key_vault_id = string (Required)
  name = string (Required)
  certificate_count = number (Computed)
  expiration_date = string (Computed)
  hex = string (Computed)
  key = string (Computed)
  not_before_date = string (Computed)
  pem = string (Computed)
  version = string (Optional, Computed)
}
