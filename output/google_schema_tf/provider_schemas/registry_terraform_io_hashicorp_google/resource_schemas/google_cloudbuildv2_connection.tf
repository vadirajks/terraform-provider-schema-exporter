resource "google_cloudbuildv2_connection" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  disabled = bool (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  installation_state = ['list', ['object', {'action_uri': 'string', 'message': 'string', 'stage': 'string'}]] (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  update_time = string (Computed)

  bitbucket_cloud_config block "list" (Optional) {
    webhook_secret_secret_version = string (Required)
    workspace = string (Required)

    authorizer_credential block "list" (Required) {
      user_token_secret_version = string (Required)
      username = string (Computed)
    }

    read_authorizer_credential block "list" (Required) {
      user_token_secret_version = string (Required)
      username = string (Computed)
    }
  }

  bitbucket_data_center_config block "list" (Optional) {
    host_uri = string (Required)
    webhook_secret_secret_version = string (Required)
    server_version = string (Computed)
    ssl_ca = string (Optional)

    authorizer_credential block "list" (Required) {
      user_token_secret_version = string (Required)
      username = string (Computed)
    }

    read_authorizer_credential block "list" (Required) {
      user_token_secret_version = string (Required)
      username = string (Computed)
    }

    service_directory_config block "list" (Optional) {
      service = string (Required)
    }
  }

  github_config block "list" (Optional) {
    app_installation_id = number (Optional)

    authorizer_credential block "list" (Optional) {
      oauth_token_secret_version = string (Optional)
      username = string (Computed)
    }
  }

  github_enterprise_config block "list" (Optional) {
    host_uri = string (Required)
    app_id = number (Optional)
    app_installation_id = number (Optional)
    app_slug = string (Optional)
    private_key_secret_version = string (Optional)
    ssl_ca = string (Optional)
    webhook_secret_secret_version = string (Optional)

    service_directory_config block "list" (Optional) {
      service = string (Required)
    }
  }

  gitlab_config block "list" (Optional) {
    webhook_secret_secret_version = string (Required)
    host_uri = string (Optional, Computed)
    server_version = string (Computed)
    ssl_ca = string (Optional)

    authorizer_credential block "list" (Required) {
      user_token_secret_version = string (Required)
      username = string (Computed)
    }

    read_authorizer_credential block "list" (Required) {
      user_token_secret_version = string (Required)
      username = string (Computed)
    }

    service_directory_config block "list" (Optional) {
      service = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
