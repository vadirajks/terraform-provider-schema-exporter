data "azurerm_mysql_server" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Computed)
  auto_grow_enabled = bool (Computed)
  backup_retention_days = number (Computed)
  fqdn = string (Computed)
  geo_redundant_backup_enabled = bool (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  infrastructure_encryption_enabled = bool (Computed)
  location = string (Computed)
  public_network_access_enabled = bool (Computed)
  restore_point_in_time = string (Computed)
  sku_name = string (Computed)
  ssl_enforcement_enabled = bool (Computed)
  ssl_minimal_tls_version_enforced = string (Computed)
  storage_mb = number (Computed)
  tags = ['map', 'string'] (Computed)
  threat_detection_policy = ['list', ['object', {'disabled_alerts': ['set', 'string'], 'email_account_admins': 'bool', 'email_addresses': ['set', 'string'], 'enabled': 'bool', 'retention_days': 'number', 'storage_account_access_key': 'string', 'storage_endpoint': 'string'}]] (Computed)
  version = string (Computed)

  timeouts block "single"  (Optional){
    read = string (Optional)
  }
}
