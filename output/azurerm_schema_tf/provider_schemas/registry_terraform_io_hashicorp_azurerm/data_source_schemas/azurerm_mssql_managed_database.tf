data "azurerm_mssql_managed_database" "name" {
  managed_instance_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  long_term_retention_policy = ['list', ['object', {'immutable_backups_enabled': 'bool', 'monthly_retention': 'string', 'week_of_year': 'number', 'weekly_retention': 'string', 'yearly_retention': 'string'}]] (Computed)
  managed_instance_name = string (Computed)
  point_in_time_restore = ['list', ['object', {'restore_point_in_time': 'string', 'source_database_id': 'string'}]] (Computed)
  resource_group_name = string (Computed)
  short_term_retention_days = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
