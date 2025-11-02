resource "azurerm_sentinel_alert_rule_ms_security_incident" "name" {
  display_name = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  product_filter = string (Required)
  severity_filter = ['set', 'string'] (Required)
  alert_rule_template_guid = string (Optional)
  description = string (Optional)
  display_name_exclude_filter = ['set', 'string'] (Optional)
  display_name_filter = ['set', 'string'] (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
