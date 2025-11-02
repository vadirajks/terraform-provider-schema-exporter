resource "azurerm_stream_analytics_job_schedule" "name" {
  start_mode = string (Required)
  stream_analytics_job_id = string (Required)
  id = string (Optional, Computed)
  last_output_time = string (Computed)
  start_time = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
