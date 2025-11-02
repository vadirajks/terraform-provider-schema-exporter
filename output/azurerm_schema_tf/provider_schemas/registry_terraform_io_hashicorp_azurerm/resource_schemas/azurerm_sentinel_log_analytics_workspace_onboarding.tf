resource "azurerm_sentinel_log_analytics_workspace_onboarding" "name" {
  workspace_id = string (Required)
  customer_managed_key_enabled = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
