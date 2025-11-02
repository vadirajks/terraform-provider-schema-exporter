resource "azurerm_dev_test_schedule" "name" {
  lab_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  task_type = string (Required)
  time_zone_id = string (Required)
  id = string (Optional, Computed)
  status = string (Optional)
  tags = ['map', 'string'] (Optional)

  daily_recurrence block "list" (Optional) {
    time = string (Required)
  }

  hourly_recurrence block "list" (Optional) {
    minute = number (Required)
  }

  notification_settings block "list" (Required) {
    status = string (Optional)
    time_in_minutes = number (Optional)
    webhook_url = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  weekly_recurrence block "list" (Optional) {
    time = string (Required)
    week_days = ['list', 'string'] (Optional)
  }
}
