resource "azurerm_sentinel_data_connector_microsoft_cloud_app_security" "name" {
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  alerts_enabled = bool (Optional)
  discovery_logs_enabled = bool (Optional)
  id = string (Optional, Computed)
  tenant_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
