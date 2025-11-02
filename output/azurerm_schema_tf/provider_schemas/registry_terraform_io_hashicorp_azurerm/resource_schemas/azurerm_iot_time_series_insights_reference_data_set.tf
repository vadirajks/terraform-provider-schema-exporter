resource "azurerm_iot_time_series_insights_reference_data_set" "name" {
  location = string (Required)
  name = string (Required)
  time_series_insights_environment_id = string (Required)
  data_string_comparison_behavior = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  key_property block "set"  (Required){
    name = string (Required)
    type = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
