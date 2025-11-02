resource "azurerm_mssql_server_microsoft_support_auditing_policy" "name" {
  server_id = string (Required)
  blob_storage_endpoint = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  log_monitoring_enabled = bool (Optional)
  storage_account_access_key = string (Optional)
  storage_account_subscription_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
