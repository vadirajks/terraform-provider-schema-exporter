resource "azurerm_stream_analytics_function_javascript_udf" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  script = string (Required)
  stream_analytics_job_name = string (Required)
  id = string (Optional, Computed)

  input block "list" (Required) {
    type = string (Required)
    configuration_parameter = bool (Optional)
  }

  output block "list" (Required) {
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
