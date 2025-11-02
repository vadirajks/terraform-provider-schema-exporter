resource "azurerm_dev_test_global_vm_shutdown_schedule" "name" {
  daily_recurrence_time = string (Required)
  location = string (Required)
  timezone = string (Required)
  virtual_machine_id = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  notification_settings block "list" (Required) {
    enabled = bool (Required)
    email = string (Optional)
    time_in_minutes = number (Optional)
    webhook_url = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
