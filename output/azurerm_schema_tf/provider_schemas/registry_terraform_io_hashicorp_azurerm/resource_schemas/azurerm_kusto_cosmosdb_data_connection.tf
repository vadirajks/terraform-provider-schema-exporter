resource "azurerm_kusto_cosmosdb_data_connection" "name" {
  cosmosdb_container_id = string (Required)
  kusto_database_id = string (Required)
  location = string (Required)
  managed_identity_id = string (Required)
  name = string (Required)
  table_name = string (Required)
  id = string (Optional, Computed)
  mapping_rule_name = string (Optional)
  retrieval_start_date = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
