resource "azurerm_virtual_desktop_scaling_plan" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  time_zone = string (Required)
  description = string (Optional)
  exclusion_tag = string (Optional)
  friendly_name = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  host_pool block "list" (Optional) {
    hostpool_id = string (Required)
    scaling_plan_enabled = bool (Required)
  }

  schedule block "list" (Required) {
    days_of_week = ['set', 'string'] (Required)
    name = string (Required)
    off_peak_load_balancing_algorithm = string (Required)
    off_peak_start_time = string (Required)
    peak_load_balancing_algorithm = string (Required)
    peak_start_time = string (Required)
    ramp_down_capacity_threshold_percent = number (Required)
    ramp_down_force_logoff_users = bool (Required)
    ramp_down_load_balancing_algorithm = string (Required)
    ramp_down_minimum_hosts_percent = number (Required)
    ramp_down_notification_message = string (Required)
    ramp_down_start_time = string (Required)
    ramp_down_stop_hosts_when = string (Required)
    ramp_down_wait_time_minutes = number (Required)
    ramp_up_load_balancing_algorithm = string (Required)
    ramp_up_start_time = string (Required)
    ramp_up_capacity_threshold_percent = number (Optional)
    ramp_up_minimum_hosts_percent = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
