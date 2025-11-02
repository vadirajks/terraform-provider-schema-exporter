data "azurerm_iothub" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  hostname = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
