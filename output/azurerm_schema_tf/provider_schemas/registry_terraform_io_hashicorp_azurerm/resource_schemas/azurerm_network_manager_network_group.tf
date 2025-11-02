resource "azurerm_network_manager_network_group" "name" {
  name = string (Required)
  network_manager_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
