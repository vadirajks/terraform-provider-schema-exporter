data "azurerm_log_analytics_workspace" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  daily_quota_gb = number (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  primary_shared_key = string (Computed)
  retention_in_days = number (Computed)
  secondary_shared_key = string (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)
  workspace_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
