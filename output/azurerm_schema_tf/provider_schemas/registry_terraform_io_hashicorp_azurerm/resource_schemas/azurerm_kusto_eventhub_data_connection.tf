resource "azurerm_kusto_eventhub_data_connection" "name" {
  cluster_name = string (Required)
  consumer_group = string (Required)
  database_name = string (Required)
  eventhub_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  compression = string (Optional)
  data_format = string (Optional)
  database_routing_type = string (Optional)
  event_system_properties = ['list', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  identity_id = string (Optional)
  mapping_rule_name = string (Optional)
  table_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
