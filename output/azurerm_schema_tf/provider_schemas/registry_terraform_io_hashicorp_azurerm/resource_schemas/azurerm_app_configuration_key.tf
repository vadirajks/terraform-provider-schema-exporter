resource "azurerm_app_configuration_key" "name" {
  configuration_store_id = string (Required)
  key = string (Required)
  content_type = string (Optional, Computed)
  etag = string (Optional, Computed)
  id = string (Optional, Computed)
  label = string (Optional)
  locked = bool (Optional)
  tags = ['map', 'string'] (Optional)
  type = string (Optional)
  value = string (Optional)
  vault_key_reference = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
