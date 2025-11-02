data "azurerm_dev_center_attached_network" "name" {
  dev_center_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  network_connection_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
