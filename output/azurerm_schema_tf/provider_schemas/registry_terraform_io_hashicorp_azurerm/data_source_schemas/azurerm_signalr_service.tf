data "azurerm_signalr_service" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  aad_auth_enabled = bool (Computed)
  hostname = string (Computed)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  local_auth_enabled = bool (Computed)
  location = string (Computed)
  primary_access_key = string (Computed)
  primary_connection_string = string (Computed)
  public_network_access_enabled = bool (Computed)
  public_port = number (Computed)
  secondary_access_key = string (Computed)
  secondary_connection_string = string (Computed)
  server_port = number (Computed)
  serverless_connection_timeout_in_seconds = number (Computed)
  tags = ['map', 'string'] (Computed)
  tls_client_cert_enabled = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
