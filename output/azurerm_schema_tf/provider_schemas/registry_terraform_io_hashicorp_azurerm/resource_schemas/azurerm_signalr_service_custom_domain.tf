resource "azurerm_signalr_service_custom_domain" "name" {
  domain_name = string (Required)
  name = string (Required)
  signalr_custom_certificate_id = string (Required)
  signalr_service_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
