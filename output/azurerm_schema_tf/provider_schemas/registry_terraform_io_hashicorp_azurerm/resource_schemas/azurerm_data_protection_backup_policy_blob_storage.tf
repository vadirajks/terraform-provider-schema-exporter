resource "azurerm_data_protection_backup_policy_blob_storage" "name" {
  name = string (Required)
  vault_id = string (Required)
  backup_repeating_time_intervals = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  operational_default_retention_duration = string (Optional)
  time_zone = string (Optional)
  vault_default_retention_duration = string (Optional)

  retention_rule block "list" (Optional) {
    name = string (Required)
    priority = number (Required)

    criteria block "list" (Required) {
      absolute_criteria = string (Optional)
      days_of_month = ['set', 'number'] (Optional)
      days_of_week = ['set', 'string'] (Optional)
      months_of_year = ['set', 'string'] (Optional)
      scheduled_backup_times = ['set', 'string'] (Optional)
      weeks_of_month = ['set', 'string'] (Optional)
    }

    life_cycle block "list" (Required) {
      data_store_type = string (Required)
      duration = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
