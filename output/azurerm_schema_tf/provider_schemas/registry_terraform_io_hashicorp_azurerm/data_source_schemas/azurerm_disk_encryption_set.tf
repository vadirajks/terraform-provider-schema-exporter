data "azurerm_disk_encryption_set" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  auto_key_rotation_enabled = bool (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  key_vault_key_url = string (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
