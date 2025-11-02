resource "azurerm_cosmosdb_cassandra_keyspace" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  throughput = number (Optional, Computed)

  autoscale_settings block "list" (Optional) {
    max_throughput = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
