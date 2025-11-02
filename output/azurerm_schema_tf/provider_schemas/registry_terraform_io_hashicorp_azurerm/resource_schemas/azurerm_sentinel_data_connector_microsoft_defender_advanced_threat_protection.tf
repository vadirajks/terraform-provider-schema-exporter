resource "azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection" "name" {
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  tenant_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
