resource "azurerm_monitor_activity_log_alert" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scopes = ['set', 'string'] (Required)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  action block "list" (Optional) {
    action_group_id = string (Required)
    webhook_properties = ['map', 'string'] (Optional)
  }

  criteria block "list" (Required) {
    category = string (Required)
    caller = string (Optional)
    level = string (Optional)
    levels = ['list', 'string'] (Optional)
    operation_name = string (Optional)
    recommendation_category = string (Optional)
    recommendation_impact = string (Optional)
    recommendation_type = string (Optional)
    resource_group = string (Optional)
    resource_groups = ['list', 'string'] (Optional)
    resource_id = string (Optional)
    resource_ids = ['list', 'string'] (Optional)
    resource_provider = string (Optional)
    resource_providers = ['list', 'string'] (Optional)
    resource_type = string (Optional)
    resource_types = ['list', 'string'] (Optional)
    status = string (Optional)
    statuses = ['list', 'string'] (Optional)
    sub_status = string (Optional)
    sub_statuses = ['list', 'string'] (Optional)

    resource_health block "list" (Optional) {
      current = ['set', 'string'] (Optional)
      previous = ['set', 'string'] (Optional)
      reason = ['set', 'string'] (Optional)
    }

    service_health block "list" (Optional) {
      events = ['set', 'string'] (Optional)
      locations = ['set', 'string'] (Optional)
      services = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
