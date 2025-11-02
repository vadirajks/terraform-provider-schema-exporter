resource "azurerm_sentinel_alert_rule_machine_learning_behavior_analytics" "name" {
  alert_rule_template_guid = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
