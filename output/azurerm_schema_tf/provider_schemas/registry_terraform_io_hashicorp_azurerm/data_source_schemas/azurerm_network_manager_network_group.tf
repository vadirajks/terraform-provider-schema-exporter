data "azurerm_network_manager_network_group" "name" {
  name = string (Required)
  network_manager_id = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
