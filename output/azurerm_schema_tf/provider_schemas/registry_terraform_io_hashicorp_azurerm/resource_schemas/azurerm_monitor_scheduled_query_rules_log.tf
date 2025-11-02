resource "azurerm_monitor_scheduled_query_rules_log" "name" {
  data_source_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  authorized_resource_ids = ['set', 'string'] (Optional)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  criteria block "list" (Required) {
    metric_name = string (Required)

    dimension block "set" (Required) {
      name = string (Required)
      values = ['list', 'string'] (Required)
      operator = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
