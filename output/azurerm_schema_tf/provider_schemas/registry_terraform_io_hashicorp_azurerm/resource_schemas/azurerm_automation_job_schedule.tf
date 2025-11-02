resource "azurerm_automation_job_schedule" "name" {
  automation_account_name = string (Required)
  resource_group_name = string (Required)
  runbook_name = string (Required)
  schedule_name = string (Required)
  id = string (Optional, Computed)
  job_schedule_id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  resource_manager_id = string (Computed)
  run_on = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
