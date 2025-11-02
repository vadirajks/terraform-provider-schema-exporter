data "azurerm_snapshot" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  creation_option = string (Computed)
  disk_size_gb = number (Computed)
  encryption_settings = ['list', ['object', {'disk_encryption_key': ['list', ['object', {'secret_url': 'string', 'source_vault_id': 'string'}]], 'enabled': 'bool', 'key_encryption_key': ['list', ['object', {'key_url': 'string', 'source_vault_id': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  os_type = string (Computed)
  source_resource_id = string (Computed)
  source_uri = string (Computed)
  storage_account_id = string (Computed)
  time_created = string (Computed)
  trusted_launch_enabled = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
