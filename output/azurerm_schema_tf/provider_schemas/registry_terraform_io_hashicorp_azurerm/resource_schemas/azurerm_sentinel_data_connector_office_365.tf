resource "azurerm_sentinel_data_connector_office_365" "name" {
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  exchange_enabled = bool (Optional)
  id = string (Optional, Computed)
  sharepoint_enabled = bool (Optional)
  teams_enabled = bool (Optional)
  tenant_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
