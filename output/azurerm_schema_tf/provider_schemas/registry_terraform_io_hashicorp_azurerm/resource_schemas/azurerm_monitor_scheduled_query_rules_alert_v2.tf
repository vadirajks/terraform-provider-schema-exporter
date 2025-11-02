resource "azurerm_monitor_scheduled_query_rules_alert_v2" "name" {
  evaluation_frequency = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scopes = ['list', 'string'] (Required)
  severity = number (Required)
  window_duration = string (Required)
  auto_mitigation_enabled = bool (Optional)
  created_with_api_version = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  is_a_legacy_log_analytics_rule = bool (Computed)
  is_workspace_alerts_storage_configured = bool (Computed)
  mute_actions_after_alert_duration = string (Optional)
  query_time_range_override = string (Optional)
  skip_query_validation = bool (Optional)
  tags = ['map', 'string'] (Optional)
  target_resource_types = ['list', 'string'] (Optional)
  workspace_alerts_storage_enabled = bool (Optional)

  action block "list" (Optional) {
    action_groups = ['list', 'string'] (Optional)
    custom_properties = ['map', 'string'] (Optional)
  }

  criteria block "list" (Required) {
    operator = string (Required)
    query = string (Required)
    threshold = number (Required)
    time_aggregation_method = string (Required)
    metric_measure_column = string (Optional)
    resource_id_column = string (Optional)

    dimension block "list" (Optional) {
      name = string (Required)
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    failing_periods block "list" (Optional) {
      minimum_failing_periods_to_trigger_alert = number (Required)
      number_of_evaluation_periods = number (Required)
    }
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
