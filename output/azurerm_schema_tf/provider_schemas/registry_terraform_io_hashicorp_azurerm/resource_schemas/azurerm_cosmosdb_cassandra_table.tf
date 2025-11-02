resource "azurerm_cosmosdb_cassandra_table" "name" {
  cassandra_keyspace_id = string (Required)
  name = string (Required)
  analytical_storage_ttl = number (Optional)
  default_ttl = number (Optional)
  id = string (Optional, Computed)
  throughput = number (Optional, Computed)

  autoscale_settings block "list" (Optional) {
    max_throughput = number (Optional, Computed)
  }

  schema block "list" (Required) {

    cluster_key block "list" (Optional) {
      name = string (Required)
      order_by = string (Required)
    }

    column block "list" (Required) {
      name = string (Required)
      type = string (Required)
    }

    partition_key block "list" (Required) {
      name = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
