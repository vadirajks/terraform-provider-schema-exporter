resource "azurerm_backup_policy_vm_workload" "name" {
  name = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  workload_type = string (Required)
  id = string (Optional, Computed)

  protection_policy block "set" (Required) {
    policy_type = string (Required)

    backup block "list" (Required) {
      frequency = string (Optional)
      frequency_in_minutes = number (Optional)
      time = string (Optional)
      weekdays = ['set', 'string'] (Optional)
    }

    retention_daily block "list" (Optional) {
      count = number (Required)
    }

    retention_monthly block "list" (Optional) {
      count = number (Required)
      format_type = string (Required)
      monthdays = ['set', 'number'] (Optional)
      weekdays = ['set', 'string'] (Optional)
      weeks = ['set', 'string'] (Optional)
    }

    retention_weekly block "list" (Optional) {
      count = number (Required)
      weekdays = ['set', 'string'] (Required)
    }

    retention_yearly block "list" (Optional) {
      count = number (Required)
      format_type = string (Required)
      months = ['set', 'string'] (Required)
      monthdays = ['set', 'number'] (Optional)
      weekdays = ['set', 'string'] (Optional)
      weeks = ['set', 'string'] (Optional)
    }

    simple_retention block "list" (Optional) {
      count = number (Required)
    }
  }

  settings block "list" (Required) {
    time_zone = string (Required)
    compression_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
