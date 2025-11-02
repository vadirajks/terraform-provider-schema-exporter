resource "azurerm_mariadb_server" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  ssl_enforcement_enabled = bool (Required)
  version = string (Required)
  administrator_login = string (Optional, Computed)
  administrator_login_password = string (Optional)
  auto_grow_enabled = bool (Optional)
  backup_retention_days = number (Optional, Computed)
  create_mode = string (Optional)
  creation_source_server_id = string (Optional)
  fqdn = string (Computed)
  geo_redundant_backup_enabled = bool (Optional, Computed)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  restore_point_in_time = string (Optional)
  ssl_minimal_tls_version_enforced = string (Optional)
  storage_mb = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
