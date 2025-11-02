resource "azurerm_kusto_eventgrid_data_connection" "name" {
  cluster_name = string (Required)
  database_name = string (Required)
  eventhub_consumer_group_name = string (Required)
  eventhub_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  storage_account_id = string (Required)
  blob_storage_event_type = string (Optional)
  data_format = string (Optional)
  database_routing_type = string (Optional)
  eventgrid_event_subscription_id = string (Optional, Computed)
  eventgrid_resource_id = string (Optional, Computed)
  id = string (Optional, Computed)
  managed_identity_id = string (Optional, Computed)
  managed_identity_resource_id = string (Optional, Computed)
  mapping_rule_name = string (Optional)
  skip_first_record = bool (Optional)
  table_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
