resource "azurerm_spring_cloud_app_cosmosdb_association" "name" {
  api_type = string (Required)
  cosmosdb_access_key = string (Required)
  cosmosdb_account_id = string (Required)
  name = string (Required)
  spring_cloud_app_id = string (Required)
  cosmosdb_cassandra_keyspace_name = string (Optional)
  cosmosdb_gremlin_database_name = string (Optional)
  cosmosdb_gremlin_graph_name = string (Optional)
  cosmosdb_mongo_database_name = string (Optional)
  cosmosdb_sql_database_name = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
