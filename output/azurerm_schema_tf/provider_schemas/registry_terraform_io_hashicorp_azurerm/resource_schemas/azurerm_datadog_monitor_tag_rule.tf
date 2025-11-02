resource "azurerm_datadog_monitor_tag_rule" "name" {
  datadog_monitor_id = string (Required)
  id = string (Optional, Computed)
  name = string (Optional)

  log block "list" (Optional) {
    aad_log_enabled = bool (Optional)
    resource_log_enabled = bool (Optional)
    subscription_log_enabled = bool (Optional)

    filter block "list" (Optional) {
      action = string (Required)
      name = string (Required)
      value = string (Required)
    }
  }

  metric block "list" (Optional) {

    filter block "list" (Optional) {
      action = string (Required)
      name = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
