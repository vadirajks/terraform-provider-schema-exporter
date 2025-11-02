resource "azurerm_postgresql_server" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  ssl_enforcement_enabled = bool (Required)
  version = string (Required)
  administrator_login = string (Optional, Computed)
  administrator_login_password = string (Optional)
  administrator_login_password_wo = string (Optional)
  administrator_login_password_wo_version = number (Optional)
  auto_grow_enabled = bool (Optional)
  backup_retention_days = number (Optional, Computed)
  create_mode = string (Optional)
  creation_source_server_id = string (Optional)
  fqdn = string (Computed)
  geo_redundant_backup_enabled = bool (Optional)
  id = string (Optional, Computed)
  infrastructure_encryption_enabled = bool (Optional)
  public_network_access_enabled = bool (Optional)
  restore_point_in_time = string (Optional)
  ssl_minimal_tls_version_enforced = string (Optional)
  storage_mb = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  threat_detection_policy block "list" (Optional) {
    disabled_alerts = ['set', 'string'] (Optional)
    email_account_admins = bool (Optional)
    email_addresses = ['set', 'string'] (Optional)
    enabled = bool (Optional)
    retention_days = number (Optional)
    storage_account_access_key = string (Optional)
    storage_endpoint = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
