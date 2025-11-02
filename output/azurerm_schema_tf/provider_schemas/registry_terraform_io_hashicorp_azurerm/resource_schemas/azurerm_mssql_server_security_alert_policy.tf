resource "azurerm_mssql_server_security_alert_policy" "name" {
  resource_group_name = string (Required)
  server_name = string (Required)
  state = string (Required)
  disabled_alerts = ['set', 'string'] (Optional)
  email_account_admins = bool (Optional)
  email_addresses = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  retention_days = number (Optional)
  storage_account_access_key = string (Optional)
  storage_endpoint = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
