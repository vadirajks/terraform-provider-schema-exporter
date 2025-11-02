resource "azurerm_automation_watcher" "name" {
  automation_account_id = string (Required)
  execution_frequency_in_seconds = number (Required)
  location = string (Required)
  name = string (Required)
  script_name = string (Required)
  script_run_on = string (Required)
  description = string (Optional)
  etag = string (Optional)
  id = string (Optional, Computed)
  script_parameters = ['map', 'string'] (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
