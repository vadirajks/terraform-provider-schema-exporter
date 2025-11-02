resource "azurerm_stream_analytics_output_synapse" "name" {
  database = string (Required)
  name = string (Required)
  password = string (Required)
  resource_group_name = string (Required)
  server = string (Required)
  stream_analytics_job_name = string (Required)
  table = string (Required)
  user = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
