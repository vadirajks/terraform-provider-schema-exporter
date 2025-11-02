resource "azurerm_system_center_virtual_machine_manager_server" "name" {
  custom_location_id = string (Required)
  fqdn = string (Required)
  location = string (Required)
  name = string (Required)
  password = string (Required)
  resource_group_name = string (Required)
  username = string (Required)
  id = string (Optional, Computed)
  port = number (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
