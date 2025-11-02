resource "azurerm_cosmosdb_gremlin_graph" "name" {
  account_name = string (Required)
  database_name = string (Required)
  name = string (Required)
  partition_key_path = string (Required)
  resource_group_name = string (Required)
  analytical_storage_ttl = number (Optional)
  default_ttl = number (Optional)
  id = string (Optional, Computed)
  partition_key_version = number (Optional)
  throughput = number (Optional, Computed)

  autoscale_settings block "list" (Optional) {
    max_throughput = number (Optional, Computed)
  }

  conflict_resolution_policy block "list" (Optional) {
    mode = string (Required)
    conflict_resolution_path = string (Optional)
    conflict_resolution_procedure = string (Optional)
  }

  index_policy block "list" (Optional) {
    indexing_mode = string (Required)
    automatic = bool (Optional)
    excluded_paths = ['set', 'string'] (Optional, Computed)
    included_paths = ['set', 'string'] (Optional, Computed)

    composite_index block "list" (Optional) {

      index block "list" (Required) {
        order = string (Required)
        path = string (Required)
      }
    }

    spatial_index block "list" (Optional) {
      path = string (Required)
      types = ['set', 'string'] (Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  unique_key block "set" (Optional) {
    paths = ['set', 'string'] (Required)
  }
}
