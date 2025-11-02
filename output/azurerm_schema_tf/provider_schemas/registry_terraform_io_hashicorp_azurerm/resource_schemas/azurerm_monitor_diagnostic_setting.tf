resource "azurerm_monitor_diagnostic_setting" "name" {
  name = string (Required)
  target_resource_id = string (Required)
  eventhub_authorization_rule_id = string (Optional)
  eventhub_name = string (Optional)
  id = string (Optional, Computed)
  log_analytics_destination_type = string (Optional, Computed)
  log_analytics_workspace_id = string (Optional)
  partner_solution_id = string (Optional)
  storage_account_id = string (Optional)

  enabled_log block "set" (Optional) {
    category = string (Optional)
    category_group = string (Optional)

    retention_policy block "list" (Optional) {
      enabled = bool (Required)
      days = number (Optional)
    }
  }

  enabled_metric block "set" (Optional) {
    category = string (Required)
  }

  metric block "set" (Optional) {
    category = string (Required)
    enabled = bool (Optional)

    retention_policy block "list" (Optional) {
      enabled = bool (Required)
      days = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
