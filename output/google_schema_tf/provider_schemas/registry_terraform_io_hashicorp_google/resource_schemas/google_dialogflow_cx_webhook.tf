resource "google_dialogflow_cx_webhook" "name" {
  display_name = string (Required)
  disabled = bool (Optional)
  enable_spell_correction = bool (Optional)
  enable_stackdriver_logging = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  parent = string (Optional)
  security_settings = string (Optional)
  start_flow = string (Computed)
  timeout = string (Optional)

  generic_web_service block "list" (Optional) {
    uri = string (Required)
    allowed_ca_certs = ['list', 'string'] (Optional)
    http_method = string (Optional)
    parameter_mapping = ['map', 'string'] (Optional)
    request_body = string (Optional)
    request_headers = ['map', 'string'] (Optional)
    secret_version_for_username_password = string (Optional)
    service_agent_auth = string (Optional)
    webhook_type = string (Optional)

    oauth_config block "list" (Optional) {
      client_id = string (Required)
      token_endpoint = string (Required)
      client_secret = string (Optional)
      scopes = ['list', 'string'] (Optional)
      secret_version_for_client_secret = string (Optional)
    }

    secret_versions_for_request_headers block "set" (Optional) {
      key = string (Required)
      secret_version = string (Required)
    }
  }

  service_directory block "list" (Optional) {
    service = string (Required)

    generic_web_service block "list" (Optional) {
      uri = string (Required)
      allowed_ca_certs = ['list', 'string'] (Optional)
      http_method = string (Optional)
      parameter_mapping = ['map', 'string'] (Optional)
      request_body = string (Optional)
      request_headers = ['map', 'string'] (Optional)
      secret_version_for_username_password = string (Optional)
      service_agent_auth = string (Optional)
      webhook_type = string (Optional)

      oauth_config block "list" (Optional) {
        client_id = string (Required)
        token_endpoint = string (Required)
        client_secret = string (Optional)
        scopes = ['list', 'string'] (Optional)
        secret_version_for_client_secret = string (Optional)
      }

      secret_versions_for_request_headers block "set" (Optional) {
        key = string (Required)
        secret_version = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
