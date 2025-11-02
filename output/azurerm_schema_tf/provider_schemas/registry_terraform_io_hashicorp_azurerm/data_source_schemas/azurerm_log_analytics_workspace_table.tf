data "azurerm_log_analytics_workspace_table" "name" {
  name = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)
  plan = string (Computed)
  retention_in_days = number (Computed)
  total_retention_in_days = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
