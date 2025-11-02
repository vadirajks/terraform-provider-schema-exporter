resource "azurerm_dynatrace_tag_rules" "name" {
  monitor_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  log_rule block "list" (Optional) {
    send_activity_logs_enabled = bool (Optional)
    send_azure_active_directory_logs_enabled = bool (Optional)
    send_subscription_logs_enabled = bool (Optional)

    filtering_tag block "list" (Required) {
      action = string (Required)
      name = string (Required)
      value = string (Required)
    }
  }

  metric_rule block "list" (Optional) {
    sending_metrics_enabled = bool (Optional)

    filtering_tag block "list" (Required) {
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
