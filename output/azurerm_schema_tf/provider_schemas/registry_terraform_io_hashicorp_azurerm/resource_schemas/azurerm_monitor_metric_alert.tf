resource "azurerm_monitor_metric_alert" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  scopes = ['set', 'string'] (Required)
  auto_mitigate = bool (Optional)
  description = string (Optional)
  enabled = bool (Optional)
  frequency = string (Optional)
  id = string (Optional, Computed)
  severity = number (Optional)
  tags = ['map', 'string'] (Optional)
  target_resource_location = string (Optional, Computed)
  target_resource_type = string (Optional, Computed)
  window_size = string (Optional)

  action block "set" (Optional) {
    action_group_id = string (Required)
    webhook_properties = ['map', 'string'] (Optional)
  }

  application_insights_web_test_location_availability_criteria block "list" (Optional) {
    component_id = string (Required)
    failed_location_count = number (Required)
    web_test_id = string (Required)
  }

  criteria block "list" (Optional) {
    aggregation = string (Required)
    metric_name = string (Required)
    metric_namespace = string (Required)
    operator = string (Required)
    threshold = number (Required)
    skip_metric_validation = bool (Optional)

    dimension block "list" (Optional) {
      name = string (Required)
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  dynamic_criteria block "list" (Optional) {
    aggregation = string (Required)
    alert_sensitivity = string (Required)
    metric_name = string (Required)
    metric_namespace = string (Required)
    operator = string (Required)
    evaluation_failure_count = number (Optional)
    evaluation_total_count = number (Optional)
    ignore_data_before = string (Optional)
    skip_metric_validation = bool (Optional)

    dimension block "list" (Optional) {
      name = string (Required)
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
