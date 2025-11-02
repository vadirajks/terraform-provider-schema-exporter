resource "azurerm_network_manager_static_member" "name" {
  name = string (Required)
  network_group_id = string (Required)
  target_virtual_network_id = string (Required)
  id = string (Optional, Computed)
  region = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
