resource "google_apihub_plugin_instance" "name" {
  display_name = string (Required)
  location = string (Required)
  plugin = string (Required)
  plugin_instance_id = string (Required)
  create_time = string (Computed)
  disable = bool (Optional)
  error_message = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  update_time = string (Computed)

  actions block "list" (Optional) {
    action_id = string (Required)
    hub_instance_action = ['list', ['object', {'current_execution_state': 'string', 'last_execution': ['list', ['object', {'end_time': 'string', 'error_message': 'string', 'result': 'string', 'start_time': 'string'}]]}]] (Computed)
    schedule_cron_expression = string (Optional, Computed)
    schedule_time_zone = string (Optional, Computed)
    state = string (Computed)

    curation_config block "list" (Optional) {
      curation_type = string (Optional, Computed)

      custom_curation block "list" (Optional) {
        curation = string (Required)
      }
    }
  }

  auth_config block "list" (Optional) {
    auth_type = string (Required)

    api_key_config block "list" (Optional) {
      http_element_location = string (Required)
      name = string (Required)

      api_key block "list" (Required) {
        secret_version = string (Required)
      }
    }

    google_service_account_config block "list" (Optional) {
      service_account = string (Required)
    }

    oauth2_client_credentials_config block "list" (Optional) {
      client_id = string (Required)

      client_secret block "list" (Required) {
        secret_version = string (Required)
      }
    }

    user_password_config block "list" (Optional) {
      username = string (Required)

      password block "list" (Required) {
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
