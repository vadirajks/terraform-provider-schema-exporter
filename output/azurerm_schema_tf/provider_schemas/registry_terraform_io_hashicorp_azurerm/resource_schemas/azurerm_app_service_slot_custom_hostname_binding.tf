resource "azurerm_app_service_slot_custom_hostname_binding" "name" {
  app_service_slot_id = string (Required)
  hostname = string (Required)
  id = string (Optional, Computed)
  ssl_state = string (Optional, Computed)
  thumbprint = string (Optional, Computed)
  virtual_ip = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
