data "azurerm_postgresql_flexible_server" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Computed)
  auto_grow_enabled = bool (Computed)
  backup_retention_days = number (Computed)
  delegated_subnet_id = string (Computed)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  public_network_access_enabled = bool (Computed)
  sku_name = string (Computed)
  storage_mb = number (Computed)
  tags = ['map', 'string'] (Computed)
  version = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
