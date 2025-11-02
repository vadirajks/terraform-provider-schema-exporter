resource "azurerm_sentinel_data_connector_threat_intelligence" "name" {
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  lookback_date = string (Optional)
  tenant_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
