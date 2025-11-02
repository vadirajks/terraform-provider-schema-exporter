data "azurerm_api_management_gateway_host_name_configuration" "name" {
  api_management_id = string (Required)
  gateway_name = string (Required)
  name = string (Required)
  certificate_id = string (Computed)
  host_name = string (Computed)
  http2_enabled = bool (Computed)
  id = string (Optional, Computed)
  request_client_certificate_enabled = bool (Computed)
  tls10_enabled = bool (Computed)
  tls11_enabled = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
