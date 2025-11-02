resource "azurerm_kusto_iothub_data_connection" "name" {
  cluster_name = string (Required)
  consumer_group = string (Required)
  database_name = string (Required)
  iothub_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  shared_access_policy_name = string (Required)
  data_format = string (Optional)
  database_routing_type = string (Optional)
  event_system_properties = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  mapping_rule_name = string (Optional)
  table_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
