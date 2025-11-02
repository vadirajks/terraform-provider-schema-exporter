resource "azurerm_monitor_aad_diagnostic_setting" "name" {
  name = string (Required)
  eventhub_authorization_rule_id = string (Optional)
  eventhub_name = string (Optional)
  id = string (Optional, Computed)
  log_analytics_workspace_id = string (Optional)
  storage_account_id = string (Optional)

  enabled_log block "set" (Optional) {
    category = string (Required)

    retention_policy block "list" (Optional) {
      days = number (Optional)
      enabled = bool (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
