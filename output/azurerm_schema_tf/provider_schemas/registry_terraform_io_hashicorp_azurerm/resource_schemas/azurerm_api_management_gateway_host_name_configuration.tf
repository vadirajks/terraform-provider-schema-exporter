resource "azurerm_api_management_gateway_host_name_configuration" "name" {
  api_management_id = string (Required)
  certificate_id = string (Required)
  gateway_name = string (Required)
  host_name = string (Required)
  name = string (Required)
  http2_enabled = bool (Optional)
  id = string (Optional, Computed)
  request_client_certificate_enabled = bool (Optional)
  tls10_enabled = bool (Optional)
  tls11_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
