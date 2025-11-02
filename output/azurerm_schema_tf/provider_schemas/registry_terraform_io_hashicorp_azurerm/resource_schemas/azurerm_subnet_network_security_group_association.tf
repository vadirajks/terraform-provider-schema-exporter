resource "azurerm_subnet_network_security_group_association" "name" {
  network_security_group_id = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
