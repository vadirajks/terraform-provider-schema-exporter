resource "azurerm_virtual_desktop_host_pool" "name" {
  load_balancer_type = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  type = string (Required)
  custom_rdp_properties = string (Optional)
  description = string (Optional)
  friendly_name = string (Optional)
  id = string (Optional, Computed)
  maximum_sessions_allowed = number (Optional)
  personal_desktop_assignment_type = string (Optional)
  preferred_app_group_type = string (Optional)
  public_network_access = string (Optional)
  start_vm_on_connect = bool (Optional)
  tags = ['map', 'string'] (Optional)
  validate_environment = bool (Optional)
  vm_template = string (Optional)

  scheduled_agent_updates block "list" (Optional) {
    enabled = bool (Optional)
    timezone = string (Optional)
    use_session_host_timezone = bool (Optional)

    schedule block "list" (Optional) {
      day_of_week = string (Required)
      hour_of_day = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
