resource "azurerm_mssql_database" "name" {
  name = string (Required)
  server_id = string (Required)
  auto_pause_delay_in_minutes = number (Optional, Computed)
  collation = string (Optional, Computed)
  create_mode = string (Optional)
  creation_source_database_id = string (Optional, Computed)
  elastic_pool_id = string (Optional)
  enclave_type = string (Optional, Computed)
  geo_backup_enabled = bool (Optional)
  id = string (Optional, Computed)
  ledger_enabled = bool (Optional, Computed)
  license_type = string (Optional, Computed)
  maintenance_configuration_name = string (Optional, Computed)
  max_size_gb = number (Optional, Computed)
  min_capacity = number (Optional, Computed)
  read_replica_count = number (Optional, Computed)
  read_scale = bool (Optional, Computed)
  recover_database_id = string (Optional)
  recovery_point_id = string (Optional)
  restore_dropped_database_id = string (Optional)
  restore_long_term_retention_backup_id = string (Optional)
  restore_point_in_time = string (Optional, Computed)
  sample_name = string (Optional, Computed)
  secondary_type = string (Optional, Computed)
  sku_name = string (Optional, Computed)
  storage_account_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  transparent_data_encryption_enabled = bool (Optional)
  transparent_data_encryption_key_automatic_rotation_enabled = bool (Optional)
  transparent_data_encryption_key_vault_key_id = string (Optional)
  zone_redundant = bool (Optional, Computed)

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  import block "list" (Optional) {
    administrator_login = string (Required)
    administrator_login_password = string (Required)
    authentication_type = string (Required)
    storage_key = string (Required)
    storage_key_type = string (Required)
    storage_uri = string (Required)
    storage_account_id = string (Optional)
  }

  long_term_retention_policy block "list" (Optional) {
    immutable_backups_enabled = bool (Optional)
    monthly_retention = string (Optional, Computed)
    week_of_year = number (Optional, Computed)
    weekly_retention = string (Optional, Computed)
    yearly_retention = string (Optional, Computed)
  }

  short_term_retention_policy block "list" (Optional) {
    retention_days = number (Required)
    backup_interval_in_hours = number (Optional, Computed)
  }

  threat_detection_policy block "list" (Optional) {
    disabled_alerts = ['set', 'string'] (Optional)
    email_account_admins = string (Optional)
    email_addresses = ['set', 'string'] (Optional)
    retention_days = number (Optional)
    state = string (Optional)
    storage_account_access_key = string (Optional)
    storage_endpoint = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
