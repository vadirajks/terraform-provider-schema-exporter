data "azurerm_sql_database" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  collation = string (Computed)
  default_secondary_location = string (Computed)
  edition = string (Computed)
  elastic_pool_name = string (Computed)
  failover_group_id = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  read_scale = bool (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single"  (Optional){
    read = string (Optional)
  }
}
