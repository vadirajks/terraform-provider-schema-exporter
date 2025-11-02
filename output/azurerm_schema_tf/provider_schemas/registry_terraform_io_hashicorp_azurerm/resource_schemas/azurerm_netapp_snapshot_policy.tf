resource "azurerm_netapp_snapshot_policy" "name" {
  account_name = string (Required)
  enabled = bool (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  daily_schedule block "list" (Optional) {
    hour = number (Required)
    minute = number (Required)
    snapshots_to_keep = number (Required)
  }

  hourly_schedule block "list" (Optional) {
    minute = number (Required)
    snapshots_to_keep = number (Required)
  }

  monthly_schedule block "list" (Optional) {
    days_of_month = ['set', 'number'] (Required)
    hour = number (Required)
    minute = number (Required)
    snapshots_to_keep = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  weekly_schedule block "list" (Optional) {
    days_of_week = ['set', 'string'] (Required)
    hour = number (Required)
    minute = number (Required)
    snapshots_to_keep = number (Required)
  }
}
