data "azurerm_app_configuration_keys" "name" {
  configuration_store_id = string (Required)
  id = string (Optional, Computed)
  items = ['list', ['object', {'content_type': 'string', 'etag': 'string', 'key': 'string', 'label': 'string', 'locked': 'bool', 'tags': ['map', 'string'], 'type': 'string', 'value': 'string', 'vault_key_reference': 'string'}]] (Computed)
  key = string (Optional)
  label = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
