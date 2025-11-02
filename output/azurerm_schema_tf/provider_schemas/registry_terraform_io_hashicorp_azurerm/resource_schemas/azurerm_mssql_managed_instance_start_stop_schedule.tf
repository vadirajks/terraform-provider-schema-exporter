resource "azurerm_mssql_managed_instance_start_stop_schedule" "name" {
  managed_instance_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  next_execution_time = string (Computed)
  next_run_action = string (Computed)
  timezone_id = string (Optional)

  schedule block "list" (Required) {
    start_day = string (Required)
    start_time = string (Required)
    stop_day = string (Required)
    stop_time = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
