resource "azurerm_system_center_virtual_machine_manager_virtual_machine_instance_guest_agent" "name" {
  password = string (Required)
  scoped_resource_id = string (Required)
  username = string (Required)
  id = string (Optional, Computed)
  provisioning_action = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
