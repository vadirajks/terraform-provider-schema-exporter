resource "google_developer_connect_connection" "name" {
  connection_id = string (Required)
  location = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  delete_time = string (Computed)
  disabled = bool (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Optional)
  id = string (Optional, Computed)
  installation_state = ['list', ['object', {'action_uri': 'string', 'message': 'string', 'stage': 'string'}]] (Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
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
    ssl_ca_certificate = string (Optional)

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

  crypto_key_config block "list" (Optional) {
    key_reference = string (Required)
  }

  github_config block "list" (Optional) {
    github_app = string (Required)
    app_installation_id = string (Optional, Computed)
    installation_uri = string (Computed)

    authorizer_credential block "list" (Optional) {
      oauth_token_secret_version = string (Required)
      username = string (Computed)
    }
  }

  github_enterprise_config block "list" (Optional) {
    host_uri = string (Required)
    app_id = string (Optional)
    app_installation_id = string (Optional)
    app_slug = string (Computed)
    installation_uri = string (Computed)
    private_key_secret_version = string (Optional)
    server_version = string (Computed)
    ssl_ca_certificate = string (Optional)
    webhook_secret_secret_version = string (Optional)

    service_directory_config block "list" (Optional) {
      service = string (Required)
    }
  }

  gitlab_config block "list" (Optional) {
    webhook_secret_secret_version = string (Required)

    authorizer_credential block "list" (Required) {
      user_token_secret_version = string (Required)
      username = string (Computed)
    }

    read_authorizer_credential block "list" (Required) {
      user_token_secret_version = string (Required)
      username = string (Computed)
    }
  }

  gitlab_enterprise_config block "list" (Optional) {
    host_uri = string (Required)
    webhook_secret_secret_version = string (Required)
    server_version = string (Computed)
    ssl_ca_certificate = string (Optional)

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
