data "azurerm_sentinel_alert_rule" "name" {
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
