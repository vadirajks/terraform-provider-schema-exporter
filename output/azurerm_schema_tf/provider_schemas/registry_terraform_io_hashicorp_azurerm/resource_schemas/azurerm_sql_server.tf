resource "azurerm_sql_server" "name" {
  administrator_login = string (Required)
  administrator_login_password = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  version = string (Required)
  connection_policy = string (Optional)
  fully_qualified_domain_name = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list"  (Optional){
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  threat_detection_policy block "list"  (Optional){
    disabled_alerts = ['set', 'string'] (Optional)
    email_account_admins = bool (Optional, Computed)
    email_addresses = ['set', 'string'] (Optional, Computed)
    retention_days = number (Optional)
    state = string (Optional)
    storage_account_access_key = string (Optional)
    storage_endpoint = string (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
