resource "azurerm_network_interface_application_gateway_backend_address_pool_association" "name" {
  backend_address_pool_id = string (Required)
  ip_configuration_name = string (Required)
  network_interface_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
