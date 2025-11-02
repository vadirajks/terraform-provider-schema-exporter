data "azurerm_sentinel_alert_rule_template" "name" {
  log_analytics_workspace_id = string (Required)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  nrt_template = ['list', ['object', {'description': 'string', 'query': 'string', 'severity': 'string', 'tactics': ['list', 'string']}]] (Computed)
  scheduled_template = ['list', ['object', {'description': 'string', 'query': 'string', 'query_frequency': 'string', 'query_period': 'string', 'severity': 'string', 'tactics': ['list', 'string'], 'trigger_operator': 'string', 'trigger_threshold': 'number'}]] (Computed)
  security_incident_template = ['list', ['object', {'description': 'string', 'product_filter': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
