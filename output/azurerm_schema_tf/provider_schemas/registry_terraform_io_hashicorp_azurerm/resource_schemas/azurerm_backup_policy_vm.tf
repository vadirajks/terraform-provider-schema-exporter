resource "azurerm_backup_policy_vm" "name" {
  name = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  instant_restore_retention_days = number (Optional, Computed)
  policy_type = string (Optional)
  timezone = string (Optional)

  backup block "list" (Required) {
    frequency = string (Required)
    time = string (Required)
    hour_duration = number (Optional)
    hour_interval = number (Optional)
    weekdays = ['set', 'string'] (Optional)
  }

  instant_restore_resource_group block "list" (Optional) {
    prefix = string (Required)
    suffix = string (Optional)
  }

  retention_daily block "list" (Optional) {
    count = number (Required)
  }

  retention_monthly block "list" (Optional) {
    count = number (Required)
    days = ['set', 'number'] (Optional)
    include_last_days = bool (Optional)
    weekdays = ['set', 'string'] (Optional)
    weeks = ['set', 'string'] (Optional)
  }

  retention_weekly block "list" (Optional) {
    count = number (Required)
    weekdays = ['set', 'string'] (Required)
  }

  retention_yearly block "list" (Optional) {
    count = number (Required)
    months = ['set', 'string'] (Required)
    days = ['set', 'number'] (Optional)
    include_last_days = bool (Optional)
    weekdays = ['set', 'string'] (Optional)
    weeks = ['set', 'string'] (Optional)
  }

  tiering_policy block "list" (Optional) {

    archived_restore_point block "list" (Required) {
      mode = string (Required)
      duration = number (Optional)
      duration_type = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
