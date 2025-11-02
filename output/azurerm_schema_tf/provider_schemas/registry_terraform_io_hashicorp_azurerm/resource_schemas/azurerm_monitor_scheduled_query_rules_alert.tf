resource "azurerm_monitor_scheduled_query_rules_alert" "name" {
  data_source_id = string (Required)
  frequency = number (Required)
  location = string (Required)
  name = string (Required)
  query = string (Required)
  resource_group_name = string (Required)
  time_window = number (Required)
  authorized_resource_ids = ['set', 'string'] (Optional)
  auto_mitigation_enabled = bool (Optional)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  query_type = string (Optional)
  severity = number (Optional)
  tags = ['map', 'string'] (Optional)
  throttling = number (Optional)

  action block "list" (Required) {
    action_group = ['set', 'string'] (Required)
    custom_webhook_payload = string (Optional)
    email_subject = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  trigger block "list" (Required) {
    operator = string (Required)
    threshold = number (Required)

    metric_trigger block "list" (Optional) {
      metric_trigger_type = string (Required)
      operator = string (Required)
      threshold = number (Required)
      metric_column = string (Optional)
    }
  }
}
