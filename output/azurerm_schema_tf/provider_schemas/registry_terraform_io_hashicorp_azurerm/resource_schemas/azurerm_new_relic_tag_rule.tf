resource "azurerm_new_relic_tag_rule" "name" {
  monitor_id = string (Required)
  activity_log_enabled = bool (Optional)
  azure_active_directory_log_enabled = bool (Optional)
  id = string (Optional, Computed)
  metric_enabled = bool (Optional)
  subscription_log_enabled = bool (Optional)

  log_tag_filter block "list" (Optional) {
    action = string (Required)
    name = string (Required)
    value = string (Required)
  }

  metric_tag_filter block "list" (Optional) {
    action = string (Required)
    name = string (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
