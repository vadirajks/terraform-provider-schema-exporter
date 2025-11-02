resource "azurerm_key_vault_secret" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  content_type = string (Optional)
  expiration_date = string (Optional)
  id = string (Optional, Computed)
  not_before_date = string (Optional)
  resource_id = string (Computed)
  resource_versionless_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  value = string (Optional)
  value_wo = string (Optional)
  value_wo_version = number (Optional)
  version = string (Computed)
  versionless_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
