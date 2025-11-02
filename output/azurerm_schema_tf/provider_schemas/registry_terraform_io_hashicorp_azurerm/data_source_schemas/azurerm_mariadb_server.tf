data "azurerm_mariadb_server" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Computed)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  sku_name = string (Computed)
  ssl_enforcement = string (Computed)
  storage_profile = ['list', ['object', {'auto_grow': 'string', 'backup_retention_days': 'number', 'geo_redundant_backup': 'string', 'storage_mb': 'number'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  version = string (Computed)

  timeouts block "single"  (Optional){
    read = string (Optional)
  }
}
