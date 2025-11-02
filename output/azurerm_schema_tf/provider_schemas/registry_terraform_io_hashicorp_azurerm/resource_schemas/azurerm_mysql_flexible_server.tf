resource "azurerm_mysql_flexible_server" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Optional, Computed)
  administrator_password = string (Optional)
  administrator_password_wo = string (Optional)
  administrator_password_wo_version = number (Optional)
  backup_retention_days = number (Optional)
  create_mode = string (Optional)
  delegated_subnet_id = string (Optional)
  fqdn = string (Computed)
  geo_redundant_backup_enabled = bool (Optional)
  id = string (Optional, Computed)
  point_in_time_restore_time_in_utc = string (Optional)
  private_dns_zone_id = string (Optional)
  public_network_access = string (Optional, Computed)
  public_network_access_enabled = bool (Computed)
  replica_capacity = number (Computed)
  replication_role = string (Optional, Computed)
  sku_name = string (Optional, Computed)
  source_server_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  version = string (Optional, Computed)
  zone = string (Optional, Computed)

  customer_managed_key block "list" (Optional) {
    geo_backup_key_vault_key_id = string (Optional)
    geo_backup_user_assigned_identity_id = string (Optional)
    key_vault_key_id = string (Optional)
    managed_hsm_key_id = string (Optional)
    primary_user_assigned_identity_id = string (Optional)
  }

  high_availability block "list" (Optional) {
    mode = string (Required)
    standby_availability_zone = string (Optional, Computed)
  }

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  maintenance_window block "list" (Optional) {
    day_of_week = number (Optional)
    start_hour = number (Optional)
    start_minute = number (Optional)
  }

  storage block "list" (Optional) {
    auto_grow_enabled = bool (Optional)
    io_scaling_enabled = bool (Optional)
    iops = number (Optional, Computed)
    log_on_disk_enabled = bool (Optional)
    size_gb = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
