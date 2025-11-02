resource "azurerm_data_protection_backup_policy_disk" "name" {
  backup_repeating_time_intervals = ['list', 'string'] (Required)
  default_retention_duration = string (Required)
  name = string (Required)
  vault_id = string (Required)
  id = string (Optional, Computed)
  time_zone = string (Optional)

  retention_rule block "list" (Optional) {
    duration = string (Required)
    name = string (Required)
    priority = number (Required)

    criteria block "list" (Required) {
      absolute_criteria = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
