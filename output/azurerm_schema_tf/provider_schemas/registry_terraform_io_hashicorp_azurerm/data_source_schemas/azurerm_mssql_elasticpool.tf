data "azurerm_mssql_elasticpool" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  enclave_type = string (Computed)
  id = string (Optional, Computed)
  license_type = string (Computed)
  location = string (Computed)
  max_size_bytes = number (Computed)
  max_size_gb = number (Computed)
  per_db_max_capacity = number (Computed)
  per_db_min_capacity = number (Computed)
  sku = ['list', ['object', {'capacity': 'number', 'family': 'string', 'name': 'string', 'tier': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  zone_redundant = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
