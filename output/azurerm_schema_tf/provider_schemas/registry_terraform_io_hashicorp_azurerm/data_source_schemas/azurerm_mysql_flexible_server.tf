data "azurerm_mysql_flexible_server" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Computed)
  backup_retention_days = number (Computed)
  delegated_subnet_id = string (Computed)
  fqdn = string (Computed)
  geo_redundant_backup_enabled = bool (Computed)
  high_availability = ['list', ['object', {'mode': 'string', 'standby_availability_zone': 'string'}]] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  maintenance_window = ['list', ['object', {'day_of_week': 'number', 'start_hour': 'number', 'start_minute': 'number'}]] (Computed)
  private_dns_zone_id = string (Computed)
  public_network_access_enabled = bool (Computed)
  replica_capacity = number (Computed)
  replication_role = string (Computed)
  restore_point_in_time = string (Computed)
  sku_name = string (Computed)
  storage = ['list', ['object', {'auto_grow_enabled': 'bool', 'io_scaling_enabled': 'bool', 'iops': 'number', 'size_gb': 'number'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  version = string (Computed)
  zone = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
