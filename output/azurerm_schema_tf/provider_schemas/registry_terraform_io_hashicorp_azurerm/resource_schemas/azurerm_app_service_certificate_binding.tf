resource "azurerm_app_service_certificate_binding" "name" {
  certificate_id = string (Required)
  hostname_binding_id = string (Required)
  ssl_state = string (Required)
  app_service_name = string (Computed)
  hostname = string (Computed)
  id = string (Optional, Computed)
  thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
