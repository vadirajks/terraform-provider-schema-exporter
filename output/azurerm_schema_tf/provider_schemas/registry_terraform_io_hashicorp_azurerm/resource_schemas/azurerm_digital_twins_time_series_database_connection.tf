resource "azurerm_digital_twins_time_series_database_connection" "name" {
  digital_twins_id = string (Required)
  eventhub_name = string (Required)
  eventhub_namespace_endpoint_uri = string (Required)
  eventhub_namespace_id = string (Required)
  kusto_cluster_id = string (Required)
  kusto_cluster_uri = string (Required)
  kusto_database_name = string (Required)
  name = string (Required)
  eventhub_consumer_group_name = string (Optional)
  id = string (Optional, Computed)
  kusto_table_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
