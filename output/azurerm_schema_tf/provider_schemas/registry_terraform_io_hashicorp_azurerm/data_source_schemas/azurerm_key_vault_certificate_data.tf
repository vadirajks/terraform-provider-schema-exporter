data "azurerm_key_vault_certificate_data" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  certificates_count = number (Computed)
  expires = string (Computed)
  hex = string (Computed)
  id = string (Optional, Computed)
  key = string (Computed)
  not_before = string (Computed)
  pem = string (Computed)
  tags = ['map', 'string'] (Computed)
  version = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
