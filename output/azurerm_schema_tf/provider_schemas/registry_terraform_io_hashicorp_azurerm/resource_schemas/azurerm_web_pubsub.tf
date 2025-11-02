resource "azurerm_web_pubsub" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  aad_auth_enabled = bool (Optional)
  capacity = number (Optional)
  external_ip = string (Computed)
  hostname = string (Computed)
  id = string (Optional, Computed)
  local_auth_enabled = bool (Optional)
  primary_access_key = string (Computed)
  primary_connection_string = string (Computed)
  public_network_access_enabled = bool (Optional)
  public_port = number (Computed)
  secondary_access_key = string (Computed)
  secondary_connection_string = string (Computed)
  server_port = number (Computed)
  tags = ['map', 'string'] (Optional)
  tls_client_cert_enabled = bool (Optional)
  version = string (Computed)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  live_trace block "list" (Optional) {
    connectivity_logs_enabled = bool (Optional)
    enabled = bool (Optional)
    http_request_logs_enabled = bool (Optional)
    messaging_logs_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
