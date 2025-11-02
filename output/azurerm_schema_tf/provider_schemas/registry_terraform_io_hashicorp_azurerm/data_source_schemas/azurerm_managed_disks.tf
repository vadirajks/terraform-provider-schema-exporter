data "azurerm_managed_disks" "name" {
  resource_group_name = string (Required)
  disk = ['list', ['object', {'create_option': 'string', 'disk_access_id': 'string', 'disk_encryption_set_id': 'string', 'disk_iops_read_write': 'number', 'disk_mbps_read_write': 'number', 'disk_size_in_gb': 'number', 'encryption_settings': ['list', ['object', {'disk_encryption_key': ['list', ['object', {'secret_url': 'string', 'source_vault_id': 'string'}]], 'enabled': 'bool', 'key_encryption_key': ['list', ['object', {'key_url': 'string', 'source_vault_id': 'string'}]]}]], 'id': 'string', 'image_reference_id': 'string', 'location': 'string', 'name': 'string', 'network_access_policy': 'string', 'os_type': 'string', 'source_resource_id': 'string', 'source_uri': 'string', 'storage_account_id': 'string', 'storage_account_type': 'string', 'tags': ['map', 'string'], 'zones': ['list', 'string']}]] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
