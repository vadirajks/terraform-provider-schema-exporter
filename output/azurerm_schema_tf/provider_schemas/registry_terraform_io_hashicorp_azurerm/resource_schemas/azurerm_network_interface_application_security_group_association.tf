resource "azurerm_network_interface_application_security_group_association" "name" {
  application_security_group_id = string (Required)
  network_interface_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
