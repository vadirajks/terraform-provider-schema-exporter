data "azurerm_app_configuration_key" "name" {
  configuration_store_id = string (Required)
  key = string (Required)
  content_type = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  label = string (Optional)
  locked = bool (Computed)
  tags = ['map', 'string'] (Computed)
  type = string (Computed)
  value = string (Computed)
  vault_key_reference = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
