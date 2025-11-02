resource "azurerm_iot_time_series_insights_event_source_eventhub" "name" {
  consumer_group_name = string (Required)
  environment_id = string (Required)
  event_source_resource_id = string (Required)
  eventhub_name = string (Required)
  location = string (Required)
  name = string (Required)
  namespace_name = string (Required)
  shared_access_key = string (Required)
  shared_access_key_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  timestamp_property_name = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
