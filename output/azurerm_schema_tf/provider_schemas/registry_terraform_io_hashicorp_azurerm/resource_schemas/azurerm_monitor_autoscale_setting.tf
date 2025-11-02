resource "azurerm_monitor_autoscale_setting" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  target_resource_id = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  notification block "list" (Optional) {

    email block "list" (Optional) {
      custom_emails = ['list', 'string'] (Optional)
      send_to_subscription_administrator = bool (Optional)
      send_to_subscription_co_administrator = bool (Optional)
    }

    webhook block "list" (Optional) {
      service_uri = string (Required)
      properties = ['map', 'string'] (Optional)
    }
  }

  predictive block "list" (Optional) {
    scale_mode = string (Required)
    look_ahead_time = string (Optional)
  }

  profile block "list" (Required) {
    name = string (Required)

    capacity block "list" (Required) {
      default = number (Required)
      maximum = number (Required)
      minimum = number (Required)
    }

    fixed_date block "list" (Optional) {
      end = string (Required)
      start = string (Required)
      timezone = string (Optional)
    }

    recurrence block "list" (Optional) {
      days = ['list', 'string'] (Required)
      hours = ['list', 'number'] (Required)
      minutes = ['list', 'number'] (Required)
      timezone = string (Optional)
    }

    rule block "list" (Optional) {

      metric_trigger block "list" (Required) {
        metric_name = string (Required)
        metric_resource_id = string (Required)
        operator = string (Required)
        statistic = string (Required)
        threshold = number (Required)
        time_aggregation = string (Required)
        time_grain = string (Required)
        time_window = string (Required)
        divide_by_instance_count = bool (Optional)
        metric_namespace = string (Optional)

        dimensions block "list" (Optional) {
          name = string (Required)
          operator = string (Required)
          values = ['list', 'string'] (Required)
        }
      }

      scale_action block "list" (Required) {
        cooldown = string (Required)
        direction = string (Required)
        type = string (Required)
        value = number (Required)
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
