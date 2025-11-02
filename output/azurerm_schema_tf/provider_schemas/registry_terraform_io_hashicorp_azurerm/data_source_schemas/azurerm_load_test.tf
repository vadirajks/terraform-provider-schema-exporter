data "azurerm_load_test" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  data_plane_uri = string (Computed)
  description = string (Computed)
  encryption = ['list', ['object', {'identity': ['list', ['object', {'identity_id': 'string', 'type': 'string'}]], 'key_url': 'string'}]] (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
