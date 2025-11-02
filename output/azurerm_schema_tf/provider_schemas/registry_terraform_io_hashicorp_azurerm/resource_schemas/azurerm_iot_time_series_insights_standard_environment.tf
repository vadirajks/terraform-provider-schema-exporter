resource "azurerm_iot_time_series_insights_standard_environment" "name" {
  data_retention_time = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  id = string (Optional, Computed)
  partition_key = string (Optional)
  storage_limit_exceeded_behavior = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
