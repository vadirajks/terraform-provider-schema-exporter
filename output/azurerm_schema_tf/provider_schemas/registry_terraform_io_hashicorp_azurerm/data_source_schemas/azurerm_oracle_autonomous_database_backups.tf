data "azurerm_oracle_autonomous_database_backups" "name" {
  autonomous_database_id = string (Required)
  autonomous_database_backups = ['list', ['object', {'automatic': 'bool', 'autonomous_database_backup_ocid': 'string', 'autonomous_database_ocid': 'string', 'database_backup_size_in_tbs': 'number', 'database_version': 'string', 'display_name': 'string', 'id': 'string', 'lifecycle_details': 'string', 'lifecycle_state': 'string', 'location': 'string', 'provisioning_state': 'string', 'restorable': 'bool', 'retention_period_in_days': 'number', 'time_available_til': 'string', 'time_ended': 'string', 'time_started': 'string', 'type': 'string'}]] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
