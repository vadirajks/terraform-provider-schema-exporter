resource "azurerm_sentinel_alert_rule_fusion" "name" {
  alert_rule_template_guid = string (Required)
  log_analytics_workspace_id = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  name = string (Optional)

  source block "list" (Optional) {
    name = string (Required)
    enabled = bool (Optional)

    sub_type block "list" (Optional) {
      name = string (Required)
      severities_allowed = ['set', 'string'] (Required)
      enabled = bool (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
