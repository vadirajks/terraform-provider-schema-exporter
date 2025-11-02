data "azurerm_netapp_snapshot_policy" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  daily_schedule = ['list', ['object', {'hour': 'number', 'minute': 'number', 'snapshots_to_keep': 'number'}]] (Computed)
  enabled = bool (Computed)
  hourly_schedule = ['list', ['object', {'minute': 'number', 'snapshots_to_keep': 'number'}]] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  monthly_schedule = ['list', ['object', {'days_of_month': ['set', 'number'], 'hour': 'number', 'minute': 'number', 'snapshots_to_keep': 'number'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  weekly_schedule = ['list', ['object', {'days_of_week': ['set', 'string'], 'hour': 'number', 'minute': 'number', 'snapshots_to_keep': 'number'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
