data "azurerm_resources" "name" {
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  required_tags = ['map', 'string'] (Optional)
  resource_group_name = string (Optional, Computed)
  resources = ['list', ['object', {'id': 'string', 'location': 'string', 'name': 'string', 'resource_group_name': 'string', 'tags': ['map', 'string'], 'type': 'string'}]] (Computed)
  type = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
