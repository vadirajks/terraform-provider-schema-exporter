resource "azurerm_stream_analytics_output_function" "name" {
  api_key = string (Required)
  function_app = string (Required)
  function_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  stream_analytics_job_name = string (Required)
  batch_max_count = number (Optional)
  batch_max_in_bytes = number (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
