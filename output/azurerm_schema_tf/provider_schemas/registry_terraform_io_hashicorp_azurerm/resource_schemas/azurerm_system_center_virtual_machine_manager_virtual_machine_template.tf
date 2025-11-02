resource "azurerm_system_center_virtual_machine_manager_virtual_machine_template" "name" {
  custom_location_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  system_center_virtual_machine_manager_server_inventory_item_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
