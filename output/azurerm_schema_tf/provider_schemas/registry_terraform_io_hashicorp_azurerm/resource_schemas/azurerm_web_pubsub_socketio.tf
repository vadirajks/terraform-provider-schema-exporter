resource "azurerm_web_pubsub_socketio" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  aad_auth_enabled = bool (Optional)
  external_ip = string (Computed)
  hostname = string (Computed)
  id = string (Optional, Computed)
  live_trace_connectivity_logs_enabled = bool (Optional)
  live_trace_enabled = bool (Optional)
  live_trace_http_request_logs_enabled = bool (Optional)
  live_trace_messaging_logs_enabled = bool (Optional)
  local_auth_enabled = bool (Optional)
  primary_access_key = string (Computed)
  primary_connection_string = string (Computed)
  public_network_access = string (Optional)
  public_port = number (Computed)
  secondary_access_key = string (Computed)
  secondary_connection_string = string (Computed)
  server_port = number (Computed)
  service_mode = string (Optional)
  tags = ['map', 'string'] (Optional)
  tls_client_cert_enabled = bool (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  sku block "list" (Required) {
    name = string (Required)
    capacity = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
