resource "azurerm_app_service_public_certificate" "name" {
  app_service_name = string (Required)
  blob = string (Required)
  certificate_location = string (Required)
  certificate_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
