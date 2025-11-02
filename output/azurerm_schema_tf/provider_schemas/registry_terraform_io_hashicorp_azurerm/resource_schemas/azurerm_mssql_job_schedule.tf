resource "azurerm_mssql_job_schedule" "name" {
  job_id = string (Required)
  type = string (Required)
  enabled = bool (Optional, Computed)
  end_time = string (Optional, Computed)
  id = string (Optional, Computed)
  interval = string (Optional)
  start_time = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
