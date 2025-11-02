resource "azurerm_app_service_virtual_network_swift_connection" "name" {
  app_service_id = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
