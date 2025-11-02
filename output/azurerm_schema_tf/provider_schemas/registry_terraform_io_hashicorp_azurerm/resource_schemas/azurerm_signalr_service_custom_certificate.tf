resource "azurerm_signalr_service_custom_certificate" "name" {
  custom_certificate_id = string (Required)
  name = string (Required)
  signalr_service_id = string (Required)
  certificate_version = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
