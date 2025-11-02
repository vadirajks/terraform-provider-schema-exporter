resource "azurerm_log_analytics_datasource_windows_event" "name" {
  event_log_name = string (Required)
  event_types = ['set', 'string'] (Required)
  name = string (Required)
  resource_group_name = string (Required)
  workspace_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
