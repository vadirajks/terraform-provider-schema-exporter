resource "azurerm_iot_time_series_insights_access_policy" "name" {
  name = string (Required)
  principal_object_id = string (Required)
  roles = ['set', 'string'] (Required)
  time_series_insights_environment_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
