data "azurerm_data_protection_backup_vault" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  datastore_type = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  redundancy = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
