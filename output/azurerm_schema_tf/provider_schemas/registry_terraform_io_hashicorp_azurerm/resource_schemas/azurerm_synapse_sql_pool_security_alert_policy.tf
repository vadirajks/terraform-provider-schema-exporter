resource "azurerm_synapse_sql_pool_security_alert_policy" "name" {
  policy_state = string (Required)
  sql_pool_id = string (Required)
  disabled_alerts = ['set', 'string'] (Optional)
  email_account_admins_enabled = bool (Optional)
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
