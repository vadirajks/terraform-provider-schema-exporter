resource "azurerm_synapse_sql_pool" "name" {
  name = string (Required)
  sku_name = string (Required)
  storage_account_type = string (Required)
  synapse_workspace_id = string (Required)
  collation = string (Optional, Computed)
  create_mode = string (Optional)
  data_encrypted = bool (Optional)
  geo_backup_policy_enabled = bool (Optional)
  id = string (Optional, Computed)
  recovery_database_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  restore block "list" (Optional) {
    point_in_time = string (Required)
    source_database_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
