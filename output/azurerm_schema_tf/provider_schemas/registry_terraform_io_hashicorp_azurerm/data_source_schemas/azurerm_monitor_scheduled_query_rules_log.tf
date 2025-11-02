data "azurerm_monitor_scheduled_query_rules_log" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  authorized_resource_ids = ['set', 'string'] (Computed)
  criteria = ['set', ['object', {'dimension': ['set', ['object', {'name': 'string', 'operator': 'string', 'values': ['list', 'string']}]], 'metric_name': 'string'}]] (Computed)
  data_source_id = string (Computed)
  description = string (Computed)
  enabled = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
