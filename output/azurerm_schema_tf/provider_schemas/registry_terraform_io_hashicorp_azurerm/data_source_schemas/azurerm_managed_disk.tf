data "azurerm_managed_disk" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  create_option = string (Computed)
  disk_access_id = string (Computed)
  disk_encryption_set_id = string (Computed)
  disk_iops_read_write = number (Computed)
  disk_mbps_read_write = number (Computed)
  disk_size_gb = number (Computed)
  encryption_settings = ['list', ['object', {'disk_encryption_key': ['list', ['object', {'secret_url': 'string', 'source_vault_id': 'string'}]], 'enabled': 'bool', 'key_encryption_key': ['list', ['object', {'key_url': 'string', 'source_vault_id': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  image_reference_id = string (Computed)
  location = string (Computed)
  network_access_policy = string (Computed)
  os_type = string (Computed)
  source_resource_id = string (Computed)
  source_uri = string (Computed)
  storage_account_id = string (Computed)
  storage_account_type = string (Computed)
  tags = ['map', 'string'] (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
