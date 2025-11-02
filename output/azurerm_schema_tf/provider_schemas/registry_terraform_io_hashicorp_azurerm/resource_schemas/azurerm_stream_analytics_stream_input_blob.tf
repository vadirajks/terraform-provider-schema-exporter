resource "azurerm_stream_analytics_stream_input_blob" "name" {
  date_format = string (Required)
  name = string (Required)
  path_pattern = string (Required)
  resource_group_name = string (Required)
  storage_account_key = string (Required)
  storage_account_name = string (Required)
  storage_container_name = string (Required)
  stream_analytics_job_name = string (Required)
  time_format = string (Required)
  authentication_mode = string (Optional)
  id = string (Optional, Computed)

  serialization block "list" (Required) {
    type = string (Required)
    encoding = string (Optional)
    field_delimiter = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
