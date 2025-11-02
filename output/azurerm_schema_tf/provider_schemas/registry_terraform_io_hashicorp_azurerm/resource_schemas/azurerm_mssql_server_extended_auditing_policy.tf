resource "azurerm_mssql_server_extended_auditing_policy" "name" {
  server_id = string (Required)
  audit_actions_and_groups = ['list', 'string'] (Optional, Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  log_monitoring_enabled = bool (Optional)
  predicate_expression = string (Optional)
  retention_in_days = number (Optional)
  storage_account_access_key = string (Optional)
  storage_account_access_key_is_secondary = bool (Optional)
  storage_account_subscription_id = string (Optional)
  storage_endpoint = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
