resource "azurerm_mssql_managed_database" "name" {
  managed_instance_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  short_term_retention_days = number (Optional)
  tags = ['map', 'string'] (Optional)

  long_term_retention_policy block "list" (Optional) {
    immutable_backups_enabled = bool (Optional)
    monthly_retention = string (Optional, Computed)
    week_of_year = number (Optional, Computed)
    weekly_retention = string (Optional, Computed)
    yearly_retention = string (Optional, Computed)
  }

  point_in_time_restore block "list" (Optional) {
    restore_point_in_time = string (Required)
    source_database_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
