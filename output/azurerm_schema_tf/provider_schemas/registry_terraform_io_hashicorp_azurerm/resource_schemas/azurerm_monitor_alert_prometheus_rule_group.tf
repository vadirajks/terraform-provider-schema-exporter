resource "azurerm_monitor_alert_prometheus_rule_group" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scopes = ['list', 'string'] (Required)
  cluster_name = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  interval = string (Optional)
  rule_group_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  rule block "list" (Required) {
    expression = string (Required)
    alert = string (Optional)
    annotations = ['map', 'string'] (Optional)
    enabled = bool (Optional)
    for = string (Optional)
    labels = ['map', 'string'] (Optional)
    record = string (Optional)
    severity = number (Optional)

    action block "list" (Optional) {
      action_group_id = string (Required)
      action_properties = ['map', 'string'] (Optional)
    }

    alert_resolution block "list" (Optional) {
      auto_resolved = bool (Optional)
      time_to_resolve = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
