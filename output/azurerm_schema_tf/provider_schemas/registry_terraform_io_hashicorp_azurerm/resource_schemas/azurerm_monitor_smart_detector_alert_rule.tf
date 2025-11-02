resource "azurerm_monitor_smart_detector_alert_rule" "name" {
  detector_type = string (Required)
  frequency = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scope_resource_ids = ['set', 'string'] (Required)
  severity = string (Required)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  throttling_duration = string (Optional)

  action_group block "list" (Required) {
    ids = ['set', 'string'] (Required)
    email_subject = string (Optional)
    webhook_payload = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
