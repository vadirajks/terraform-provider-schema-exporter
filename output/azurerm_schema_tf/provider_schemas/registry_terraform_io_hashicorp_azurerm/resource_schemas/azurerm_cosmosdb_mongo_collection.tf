resource "azurerm_cosmosdb_mongo_collection" "name" {
  account_name = string (Required)
  database_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  analytical_storage_ttl = number (Optional)
  default_ttl_seconds = number (Optional)
  id = string (Optional, Computed)
  shard_key = string (Optional)
  system_indexes = ['list', ['object', {'keys': ['list', 'string'], 'unique': 'bool'}]] (Computed)
  throughput = number (Optional, Computed)

  autoscale_settings block "list" (Optional) {
    max_throughput = number (Optional, Computed)
  }

  index block "set" (Optional) {
    keys = ['list', 'string'] (Required)
    unique = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
