resource "azurerm_stream_analytics_output_cosmosdb" "name" {
  container_name = string (Required)
  cosmosdb_account_key = string (Required)
  cosmosdb_sql_database_id = string (Required)
  name = string (Required)
  stream_analytics_job_id = string (Required)
  authentication_mode = string (Optional)
  document_id = string (Optional)
  id = string (Optional, Computed)
  partition_key = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
