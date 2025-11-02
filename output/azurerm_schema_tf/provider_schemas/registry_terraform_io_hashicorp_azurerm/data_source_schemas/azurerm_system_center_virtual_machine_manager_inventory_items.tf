data "azurerm_system_center_virtual_machine_manager_inventory_items" "name" {
  inventory_type = string (Required)
  system_center_virtual_machine_manager_server_id = string (Required)
  id = string (Optional, Computed)
  inventory_items = ['list', ['object', {'id': 'string', 'name': 'string', 'uuid': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
