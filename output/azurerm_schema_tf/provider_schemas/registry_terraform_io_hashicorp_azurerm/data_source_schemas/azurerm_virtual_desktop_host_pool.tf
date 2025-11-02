data "azurerm_virtual_desktop_host_pool" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  custom_rdp_properties = string (Computed)
  description = string (Computed)
  friendly_name = string (Computed)
  id = string (Optional, Computed)
  load_balancer_type = string (Computed)
  location = string (Computed)
  maximum_sessions_allowed = number (Computed)
  personal_desktop_assignment_type = string (Computed)
  preferred_app_group_type = string (Computed)
  scheduled_agent_updates = ['list', ['object', {'enabled': 'bool', 'schedule': ['list', ['object', {'day_of_week': 'string', 'hour_of_day': 'number'}]], 'timezone': 'string', 'use_session_host_timezone': 'bool'}]] (Computed)
  start_vm_on_connect = bool (Computed)
  tags = ['map', 'string'] (Computed)
  type = string (Computed)
  validate_environment = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
