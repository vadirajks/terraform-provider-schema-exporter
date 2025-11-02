resource "azurerm_stream_analytics_reference_input_mssql" "name" {
  database = string (Required)
  full_snapshot_query = string (Required)
  name = string (Required)
  password = string (Required)
  refresh_type = string (Required)
  resource_group_name = string (Required)
  server = string (Required)
  stream_analytics_job_name = string (Required)
  username = string (Required)
  delta_snapshot_query = string (Optional)
  id = string (Optional, Computed)
  refresh_interval_duration = string (Optional)
  table = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
