resource "azurerm_stream_analytics_output_mssql" "name" {
  database = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  server = string (Required)
  stream_analytics_job_name = string (Required)
  table = string (Required)
  authentication_mode = string (Optional)
  id = string (Optional, Computed)
  max_batch_count = number (Optional)
  max_writer_count = number (Optional)
  password = string (Optional)
  user = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
