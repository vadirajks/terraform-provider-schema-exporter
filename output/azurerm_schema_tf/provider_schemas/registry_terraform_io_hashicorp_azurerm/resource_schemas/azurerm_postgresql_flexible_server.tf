resource "azurerm_postgresql_flexible_server" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Optional, Computed)
  administrator_password = string (Optional)
  administrator_password_wo = string (Optional)
  administrator_password_wo_version = number (Optional)
  auto_grow_enabled = bool (Optional)
  backup_retention_days = number (Optional, Computed)
  create_mode = string (Optional)
  delegated_subnet_id = string (Optional)
  fqdn = string (Computed)
  geo_redundant_backup_enabled = bool (Optional)
  id = string (Optional, Computed)
  point_in_time_restore_time_in_utc = string (Optional)
  private_dns_zone_id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  replication_role = string (Optional)
  sku_name = string (Optional, Computed)
  source_server_id = string (Optional)
  storage_mb = number (Optional, Computed)
  storage_tier = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  version = string (Optional, Computed)
  zone = string (Optional)

  authentication block "list" (Optional) {
    active_directory_auth_enabled = bool (Optional)
    password_auth_enabled = bool (Optional)
    tenant_id = string (Optional)
  }

  customer_managed_key block "list" (Optional) {
    key_vault_key_id = string (Required)
    geo_backup_key_vault_key_id = string (Optional)
    geo_backup_user_assigned_identity_id = string (Optional)
    primary_user_assigned_identity_id = string (Optional)
  }

  high_availability block "list" (Optional) {
    mode = string (Required)
    standby_availability_zone = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  maintenance_window block "list" (Optional) {
    day_of_week = number (Optional)
    start_hour = number (Optional)
    start_minute = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
