resource "azurerm_stream_analytics_stream_input_iothub" "name" {
  endpoint = string (Required)
  eventhub_consumer_group_name = string (Required)
  iothub_namespace = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  shared_access_policy_key = string (Required)
  shared_access_policy_name = string (Required)
  stream_analytics_job_name = string (Required)
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
