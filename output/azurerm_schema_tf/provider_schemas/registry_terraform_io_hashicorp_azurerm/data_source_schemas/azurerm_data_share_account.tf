data "azurerm_data_share_account" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
