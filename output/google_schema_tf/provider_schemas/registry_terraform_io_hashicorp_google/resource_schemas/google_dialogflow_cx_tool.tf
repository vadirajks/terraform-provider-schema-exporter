resource "google_dialogflow_cx_tool" "name" {
  description = string (Required)
  display_name = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  parent = string (Optional)
  tool_type = string (Computed)

  data_store_spec block "list" (Optional) {

    data_store_connections block "list" (Required) {
      data_store = string (Optional)
      data_store_type = string (Optional)
      document_processing_mode = string (Optional)
    }

    fallback_prompt block "list" (Required) {
    }
  }

  function_spec block "list" (Optional) {
    input_schema = string (Optional)
    output_schema = string (Optional)
  }

  open_api_spec block "list" (Optional) {
    text_schema = string (Required)

    authentication block "list" (Optional) {

      api_key_config block "list" (Optional) {
        key_name = string (Required)
        request_location = string (Required)
        api_key = string (Optional)
        secret_version_for_api_key = string (Optional)
      }

      bearer_token_config block "list" (Optional) {
        secret_version_for_token = string (Optional)
        token = string (Optional)
      }

      oauth_config block "list" (Optional) {
        client_id = string (Required)
        oauth_grant_type = string (Required)
        token_endpoint = string (Required)
        client_secret = string (Optional)
        scopes = ['list', 'string'] (Optional)
        secret_version_for_client_secret = string (Optional)
      }

      service_agent_auth_config block "list" (Optional) {
        service_agent_auth = string (Optional)
      }
    }

    service_directory_config block "list" (Optional) {
      service = string (Required)
    }

    tls_config block "list" (Optional) {

      ca_certs block "list" (Required) {
        cert = string (Required)
        display_name = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
