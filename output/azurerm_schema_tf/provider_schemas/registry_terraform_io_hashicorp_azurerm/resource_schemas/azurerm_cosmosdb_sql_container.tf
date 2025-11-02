resource "azurerm_cosmosdb_sql_container" "name" {
  account_name = string (Required)
  database_name = string (Required)
  name = string (Required)
  partition_key_paths = ['list', 'string'] (Required)
  resource_group_name = string (Required)
  analytical_storage_ttl = number (Optional)
  default_ttl = number (Optional)
  id = string (Optional, Computed)
  partition_key_kind = string (Optional)
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

  indexing_policy block "list" (Optional) {
    indexing_mode = string (Optional)

    composite_index block "list" (Optional) {

      index block "list" (Required) {
        order = string (Required)
        path = string (Required)
      }
    }

    excluded_path block "list" (Optional) {
      path = string (Required)
    }

    included_path block "list" (Optional) {
      path = string (Required)
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
