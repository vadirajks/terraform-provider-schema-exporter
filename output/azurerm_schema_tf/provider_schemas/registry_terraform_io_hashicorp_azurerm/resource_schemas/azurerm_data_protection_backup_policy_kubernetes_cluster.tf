resource "azurerm_data_protection_backup_policy_kubernetes_cluster" "name" {
  backup_repeating_time_intervals = ['list', 'string'] (Required)
  name = string (Required)
  resource_group_name = string (Required)
  vault_name = string (Required)
  id = string (Optional, Computed)
  time_zone = string (Optional)

  default_retention_rule block "list" (Required) {

    life_cycle block "list" (Required) {
      data_store_type = string (Required)
      duration = string (Required)
    }
  }

  retention_rule block "list" (Optional) {
    name = string (Required)
    priority = number (Required)

    criteria block "list" (Required) {
      absolute_criteria = string (Optional)
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
