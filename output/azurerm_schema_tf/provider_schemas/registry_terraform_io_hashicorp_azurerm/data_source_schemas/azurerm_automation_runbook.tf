data "azurerm_automation_runbook" "name" {
  automation_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  content = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  log_activity_trace_level = number (Computed)
  log_progress = bool (Computed)
  log_verbose = bool (Computed)
  runbook_type = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
