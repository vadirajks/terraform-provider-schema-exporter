resource "azurerm_mssql_elasticpool" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  enclave_type = string (Optional, Computed)
  id = string (Optional, Computed)
  license_type = string (Optional, Computed)
  maintenance_configuration_name = string (Optional)
  max_size_bytes = number (Optional, Computed)
  max_size_gb = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  zone_redundant = bool (Optional)

  per_database_settings block "list" (Required) {
    max_capacity = number (Required)
    min_capacity = number (Required)
  }

  sku block "list" (Required) {
    capacity = number (Required)
    name = string (Required)
    tier = string (Required)
    family = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
