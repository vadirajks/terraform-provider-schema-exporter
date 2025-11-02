resource "azurerm_sentinel_watchlist" "name" {
  display_name = string (Required)
  item_search_key = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  default_duration = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  labels = ['list', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
