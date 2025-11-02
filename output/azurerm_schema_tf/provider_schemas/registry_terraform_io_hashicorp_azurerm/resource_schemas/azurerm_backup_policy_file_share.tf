resource "azurerm_backup_policy_file_share" "name" {
  name = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  timezone = string (Optional)

  backup block "list" (Required) {
    frequency = string (Required)
    time = string (Optional)

    hourly block "list" (Optional) {
      interval = number (Required)
      start_time = string (Required)
      window_duration = number (Required)
    }
  }

  retention_daily block "list" (Required) {
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

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
