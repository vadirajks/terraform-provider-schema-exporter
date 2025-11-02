data "azurerm_cosmosdb_sql_database" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  autoscale_settings = ['list', ['object', {'max_throughput': 'number'}]] (Computed)
  id = string (Optional, Computed)
  throughput = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
