data "azurerm_mssql_database" "name" {
  name = string (Required)
  server_id = string (Required)
  collation = string (Computed)
  elastic_pool_id = string (Computed)
  enclave_type = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'type': 'string'}]] (Computed)
  license_type = string (Computed)
  max_size_gb = number (Computed)
  read_replica_count = number (Computed)
  read_scale = bool (Computed)
  sku_name = string (Computed)
  storage_account_type = string (Computed)
  tags = ['map', 'string'] (Computed)
  transparent_data_encryption_enabled = bool (Computed)
  transparent_data_encryption_key_automatic_rotation_enabled = bool (Computed)
  transparent_data_encryption_key_vault_key_id = string (Computed)
  zone_redundant = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
