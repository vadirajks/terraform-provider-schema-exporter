resource "azurerm_network_manager_management_group_connection" "name" {
  management_group_id = string (Required)
  name = string (Required)
  network_manager_id = string (Required)
  connection_state = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
