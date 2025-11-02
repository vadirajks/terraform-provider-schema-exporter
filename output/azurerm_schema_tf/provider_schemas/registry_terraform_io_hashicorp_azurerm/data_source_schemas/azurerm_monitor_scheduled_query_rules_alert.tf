data "azurerm_monitor_scheduled_query_rules_alert" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  action = ['set', ['object', {'action_group': ['set', 'string'], 'custom_webhook_payload': 'string', 'email_subject': 'string'}]] (Computed)
  authorized_resource_ids = ['set', 'string'] (Computed)
  data_source_id = string (Computed)
  description = string (Computed)
  enabled = bool (Computed)
  frequency = number (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  query = string (Computed)
  query_type = string (Computed)
  severity = number (Computed)
  tags = ['map', 'string'] (Computed)
  throttling = number (Computed)
  time_window = number (Computed)
  trigger = ['set', ['object', {'metric_trigger': ['set', ['object', {'metric_column': 'string', 'metric_trigger_type': 'string', 'operator': 'string', 'threshold': 'number'}]], 'operator': 'string', 'threshold': 'number'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
