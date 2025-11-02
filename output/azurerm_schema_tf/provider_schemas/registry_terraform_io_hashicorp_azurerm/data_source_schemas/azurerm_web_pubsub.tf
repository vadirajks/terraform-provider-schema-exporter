data "azurerm_web_pubsub" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  aad_auth_enabled = bool (Computed)
  capacity = number (Computed)
  external_ip = string (Computed)
  hostname = string (Computed)
  id = string (Optional, Computed)
  local_auth_enabled = bool (Computed)
  location = string (Computed)
  primary_access_key = string (Computed)
  primary_connection_string = string (Computed)
  public_network_access_enabled = bool (Computed)
  public_port = number (Computed)
  secondary_access_key = string (Computed)
  secondary_connection_string = string (Computed)
  server_port = number (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)
  tls_client_cert_enabled = bool (Computed)
  version = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
