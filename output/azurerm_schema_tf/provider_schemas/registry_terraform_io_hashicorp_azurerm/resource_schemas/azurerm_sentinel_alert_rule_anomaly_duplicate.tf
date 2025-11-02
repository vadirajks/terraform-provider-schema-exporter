resource "azurerm_sentinel_alert_rule_anomaly_duplicate" "name" {
  built_in_rule_id = string (Required)
  display_name = string (Required)
  enabled = bool (Required)
  log_analytics_workspace_id = string (Required)
  mode = string (Required)
  anomaly_settings_version = number (Computed)
  anomaly_version = string (Computed)
  description = string (Computed)
  frequency = string (Computed)
  id = string (Optional, Computed)
  is_default_settings = bool (Computed)
  name = string (Computed)
  required_data_connector = ['list', ['object', {'connector_id': 'string', 'data_types': ['list', 'string']}]] (Computed)
  settings_definition_id = string (Computed)
  tactics = ['list', 'string'] (Computed)
  techniques = ['list', 'string'] (Computed)

  multi_select_observation block "list" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
    description = string (Computed)
    supported_values = ['list', 'string'] (Computed)
  }

  prioritized_exclude_observation block "list" (Optional) {
    name = string (Required)
    description = string (Computed)
    exclude = string (Optional)
    prioritize = string (Optional)
  }

  single_select_observation block "list" (Optional) {
    name = string (Required)
    value = string (Required)
    description = string (Computed)
    supported_values = ['list', 'string'] (Computed)
  }

  threshold_observation block "list" (Optional) {
    name = string (Required)
    value = string (Required)
    description = string (Computed)
    max = string (Computed)
    min = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
