resource "azurerm_sentinel_alert_rule_anomaly_built_in" "name" {
  enabled = bool (Required)
  log_analytics_workspace_id = string (Required)
  mode = string (Required)
  anomaly_settings_version = number (Computed)
  anomaly_version = string (Computed)
  description = string (Computed)
  display_name = string (Optional, Computed)
  frequency = string (Computed)
  id = string (Optional, Computed)
  multi_select_observation = ['list', ['object', {'description': 'string', 'name': 'string', 'supported_values': ['list', 'string'], 'values': ['list', 'string']}]] (Computed)
  name = string (Optional, Computed)
  prioritized_exclude_observation = ['list', ['object', {'description': 'string', 'exclude': 'string', 'name': 'string', 'prioritize': 'string'}]] (Computed)
  required_data_connector = ['list', ['object', {'connector_id': 'string', 'data_types': ['list', 'string']}]] (Computed)
  settings_definition_id = string (Computed)
  single_select_observation = ['list', ['object', {'description': 'string', 'name': 'string', 'supported_values': ['list', 'string'], 'value': 'string'}]] (Computed)
  tactics = ['list', 'string'] (Computed)
  techniques = ['list', 'string'] (Computed)
  threshold_observation = ['list', ['object', {'description': 'string', 'max': 'string', 'min': 'string', 'name': 'string', 'value': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
