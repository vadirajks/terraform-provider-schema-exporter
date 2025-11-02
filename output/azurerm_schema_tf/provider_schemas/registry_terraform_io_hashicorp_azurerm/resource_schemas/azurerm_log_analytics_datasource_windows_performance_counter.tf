resource "azurerm_log_analytics_datasource_windows_performance_counter" "name" {
  counter_name = string (Required)
  instance_name = string (Required)
  interval_seconds = number (Required)
  name = string (Required)
  object_name = string (Required)
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
