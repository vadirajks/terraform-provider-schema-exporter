resource "azurerm_automation_schedule" "name" {
  automation_account_name = string (Required)
  frequency = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  expiry_time = string (Optional, Computed)
  id = string (Optional, Computed)
  interval = number (Optional, Computed)
  month_days = ['set', 'number'] (Optional)
  start_time = string (Optional, Computed)
  timezone = string (Optional)
  week_days = ['set', 'string'] (Optional)

  monthly_occurrence block "list" (Optional) {
    day = string (Required)
    occurrence = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
