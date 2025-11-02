resource "azurerm_signalr_service" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  aad_auth_enabled = bool (Optional)
  connectivity_logs_enabled = bool (Optional)
  hostname = string (Computed)
  http_request_logs_enabled = bool (Optional)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  live_trace_enabled = bool (Optional)
  local_auth_enabled = bool (Optional)
  messaging_logs_enabled = bool (Optional)
  primary_access_key = string (Computed)
  primary_connection_string = string (Computed)
  public_network_access_enabled = bool (Optional)
  public_port = number (Computed)
  secondary_access_key = string (Computed)
  secondary_connection_string = string (Computed)
  server_port = number (Computed)
  serverless_connection_timeout_in_seconds = number (Optional)
  service_mode = string (Optional)
  tags = ['map', 'string'] (Optional)
  tls_client_cert_enabled = bool (Optional)

  cors block "list" (Optional) {
    allowed_origins = ['set', 'string'] (Required)
  }

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

  sku block "list" (Required) {
    capacity = number (Required)
    name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  upstream_endpoint block "set" (Optional) {
    category_pattern = ['list', 'string'] (Required)
    event_pattern = ['list', 'string'] (Required)
    hub_pattern = ['list', 'string'] (Required)
    url_template = string (Required)
    user_assigned_identity_id = string (Optional)
  }
}
