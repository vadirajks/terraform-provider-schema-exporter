resource "azurerm_sentinel_data_connector_threat_intelligence_taxii" "name" {
  api_root_url = string (Required)
  collection_id = string (Required)
  display_name = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  lookback_date = string (Optional)
  password = string (Optional)
  polling_frequency = string (Optional)
  tenant_id = string (Optional, Computed)
  user_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
