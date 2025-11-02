resource "azurerm_iot_time_series_insights_gen2_environment" "name" {
  id_properties = ['list', 'string'] (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  data_access_fqdn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  warm_store_data_retention_time = string (Optional)

  storage block "list"  (Required){
    key = string (Required)
    name = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
