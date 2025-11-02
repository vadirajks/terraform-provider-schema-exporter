resource "azurerm_stream_analytics_output_servicebus_queue" "name" {
  name = string (Required)
  queue_name = string (Required)
  resource_group_name = string (Required)
  servicebus_namespace = string (Required)
  stream_analytics_job_name = string (Required)
  authentication_mode = string (Optional)
  id = string (Optional, Computed)
  property_columns = ['list', 'string'] (Optional)
  shared_access_policy_key = string (Optional)
  shared_access_policy_name = string (Optional)
  system_property_columns = ['map', 'string'] (Optional)

  serialization block "list" (Required) {
    type = string (Required)
    encoding = string (Optional)
    field_delimiter = string (Optional)
    format = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
