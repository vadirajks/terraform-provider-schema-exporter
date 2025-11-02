resource "azurerm_spring_cloud_gateway" "name" {
  name = string (Required)
  spring_cloud_service_id = string (Required)
  application_performance_monitoring_ids = ['list', 'string'] (Optional)
  application_performance_monitoring_types = ['list', 'string'] (Optional)
  environment_variables = ['map', 'string'] (Optional)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  instance_count = number (Optional)
  public_network_access_enabled = bool (Optional)
  sensitive_environment_variables = ['map', 'string'] (Optional)
  url = string (Computed)

  api_metadata block "list" (Optional) {
    description = string (Optional)
    documentation_url = string (Optional)
    server_url = string (Optional)
    title = string (Optional)
    version = string (Optional)
  }

  client_authorization block "list" (Optional) {
    certificate_ids = ['list', 'string'] (Optional)
    verification_enabled = bool (Optional)
  }

  cors block "list" (Optional) {
    allowed_headers = ['set', 'string'] (Optional)
    allowed_methods = ['set', 'string'] (Optional)
    allowed_origin_patterns = ['set', 'string'] (Optional)
    allowed_origins = ['set', 'string'] (Optional)
    credentials_allowed = bool (Optional)
    exposed_headers = ['set', 'string'] (Optional)
    max_age_seconds = number (Optional)
  }

  local_response_cache_per_instance block "list" (Optional) {
    size = string (Optional)
    time_to_live = string (Optional)
  }

  local_response_cache_per_route block "list" (Optional) {
    size = string (Optional)
    time_to_live = string (Optional)
  }

  quota block "list" (Optional) {
    cpu = string (Optional)
    memory = string (Optional)
  }

  sso block "list" (Optional) {
    client_id = string (Optional)
    client_secret = string (Optional)
    issuer_uri = string (Optional)
    scope = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
