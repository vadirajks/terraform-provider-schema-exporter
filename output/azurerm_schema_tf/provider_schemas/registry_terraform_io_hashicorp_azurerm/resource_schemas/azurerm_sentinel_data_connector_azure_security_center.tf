resource "azurerm_sentinel_data_connector_azure_security_center" "name" {
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  subscription_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
