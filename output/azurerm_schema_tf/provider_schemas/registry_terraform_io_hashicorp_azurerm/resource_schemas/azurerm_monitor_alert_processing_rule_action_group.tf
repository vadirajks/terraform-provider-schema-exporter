resource "azurerm_monitor_alert_processing_rule_action_group" "name" {
  add_action_group_ids = ['list', 'string'] (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scopes = ['list', 'string'] (Required)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  condition block "list" (Optional) {

    alert_context block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    alert_rule_id block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    alert_rule_name block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    description block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    monitor_condition block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    monitor_service block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    severity block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    signal_type block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    target_resource block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    target_resource_group block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }

    target_resource_type block "list" (Optional) {
      operator = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  schedule block "list" (Optional) {
    effective_from = string (Optional)
    effective_until = string (Optional)
    time_zone = string (Optional)

    recurrence block "list" (Optional) {

      daily block "list" (Optional) {
        end_time = string (Required)
        start_time = string (Required)
      }

      monthly block "list" (Optional) {
        days_of_month = ['list', 'number'] (Required)
        end_time = string (Optional)
        start_time = string (Optional)
      }

      weekly block "list" (Optional) {
        days_of_week = ['list', 'string'] (Required)
        end_time = string (Optional)
        start_time = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
