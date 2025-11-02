resource "azurerm_log_analytics_workspace_table" "name" {
  name = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)
  plan = string (Optional)
  retention_in_days = number (Optional)
  total_retention_in_days = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
