resource "azurerm_automation_webhook" "name" {
  automation_account_name = string (Required)
  expiry_time = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  runbook_name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  run_on_worker_group = string (Optional)
  uri = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
