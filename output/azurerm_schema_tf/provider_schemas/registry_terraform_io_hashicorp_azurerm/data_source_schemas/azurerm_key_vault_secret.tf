data "azurerm_key_vault_secret" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  content_type = string (Computed)
  expiration_date = string (Computed)
  id = string (Optional, Computed)
  not_before_date = string (Computed)
  resource_id = string (Computed)
  resource_versionless_id = string (Computed)
  tags = ['map', 'string'] (Computed)
  value = string (Computed)
  version = string (Optional)
  versionless_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
