resource "azurerm_synapse_sql_pool_workload_group" "name" {
  max_resource_percent = number (Required)
  min_resource_percent = number (Required)
  name = string (Required)
  sql_pool_id = string (Required)
  id = string (Optional, Computed)
  importance = string (Optional)
  max_resource_percent_per_request = number (Optional)
  min_resource_percent_per_request = number (Optional)
  query_execution_timeout_in_seconds = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
