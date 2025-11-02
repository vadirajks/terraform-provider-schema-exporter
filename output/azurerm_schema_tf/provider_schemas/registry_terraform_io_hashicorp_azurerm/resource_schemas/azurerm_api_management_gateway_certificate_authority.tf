resource "azurerm_api_management_gateway_certificate_authority" "name" {
  api_management_id = string (Required)
  certificate_name = string (Required)
  gateway_name = string (Required)
  id = string (Optional, Computed)
  is_trusted = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
