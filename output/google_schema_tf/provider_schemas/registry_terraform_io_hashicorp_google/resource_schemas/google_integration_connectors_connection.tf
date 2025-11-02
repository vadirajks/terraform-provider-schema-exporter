resource "google_integration_connectors_connection" "name" {
  connector_version = string (Required)
  location = string (Required)
  name = string (Required)
  connection_revision = string (Computed)
  connector_version_infra_config = ['list', ['object', {'ratelimit_threshold': 'string'}]] (Computed)
  connector_version_launch_stage = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  eventing_enablement_type = string (Optional)
  eventing_runtime_data = ['list', ['object', {'events_listener_endpoint': 'string', 'status': ['list', ['object', {'description': 'string', 'state': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  service_account = string (Optional, Computed)
  service_directory = string (Computed)
  status = ['list', ['object', {'description': 'string', 'state': 'string', 'status': 'string'}]] (Computed)
  subscription_type = string (Computed)
  suspended = bool (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  auth_config block "list" (Optional) {
    auth_type = string (Required)
    auth_key = string (Optional)

    additional_variable block "list" (Optional) {
      key = string (Required)
      boolean_value = bool (Optional)
      integer_value = number (Optional)
      string_value = string (Optional)

      encryption_key_value block "list" (Optional) {
        type = string (Required)
        kms_key_name = string (Optional)
      }

      secret_value block "list" (Optional) {
        secret_version = string (Required)
      }
    }

    oauth2_auth_code_flow block "list" (Optional) {
      auth_uri = string (Optional)
      client_id = string (Optional)
      enable_pkce = bool (Optional)
      scopes = ['list', 'string'] (Optional)

      client_secret block "list" (Optional) {
        secret_version = string (Required)
      }
    }

    oauth2_client_credentials block "list" (Optional) {
      client_id = string (Required)

      client_secret block "list" (Optional) {
        secret_version = string (Required)
      }
    }

    oauth2_jwt_bearer block "list" (Optional) {

      client_key block "list" (Optional) {
        secret_version = string (Required)
      }

      jwt_claims block "list" (Optional) {
        audience = string (Optional)
        issuer = string (Optional)
        subject = string (Optional)
      }
    }

    ssh_public_key block "list" (Optional) {
      username = string (Required)
      cert_type = string (Optional)

      ssh_client_cert block "list" (Optional) {
        secret_version = string (Required)
      }

      ssh_client_cert_pass block "list" (Optional) {
        secret_version = string (Required)
      }
    }

    user_password block "list" (Optional) {
      username = string (Required)

      password block "list" (Optional) {
        secret_version = string (Required)
      }
    }
  }

  config_variable block "list" (Optional) {
    key = string (Required)
    boolean_value = bool (Optional)
    integer_value = number (Optional)
    string_value = string (Optional)

    encryption_key_value block "list" (Optional) {
      type = string (Required)
      kms_key_name = string (Optional)
    }

    secret_value block "list" (Optional) {
      secret_version = string (Required)
    }
  }

  destination_config block "list" (Optional) {
    key = string (Required)

    destination block "list" (Optional) {
      host = string (Optional)
      port = number (Optional)
      service_attachment = string (Optional)
    }
  }

  eventing_config block "list" (Optional) {
    enrichment_enabled = bool (Optional)

    additional_variable block "list" (Optional) {
      key = string (Required)
      boolean_value = bool (Optional)
      integer_value = number (Optional)
      string_value = string (Optional)

      encryption_key_value block "list" (Optional) {
        kms_key_name = string (Optional)
        type = string (Optional)
      }

      secret_value block "list" (Optional) {
        secret_version = string (Required)
      }
    }

    auth_config block "list" (Optional) {
      auth_type = string (Required)
      auth_key = string (Optional)

      additional_variable block "list" (Optional) {
        key = string (Required)
        boolean_value = bool (Optional)
        integer_value = number (Optional)
        string_value = string (Optional)

        encryption_key_value block "list" (Optional) {
          kms_key_name = string (Optional)
          type = string (Optional)
        }

        secret_value block "list" (Optional) {
          secret_version = string (Required)
        }
      }

      user_password block "list" (Required) {
        username = string (Optional)

        password block "list" (Optional) {
          secret_version = string (Required)
        }
      }
    }

    registration_destination_config block "list" (Required) {
      key = string (Optional)

      destination block "list" (Optional) {
        host = string (Optional)
        port = number (Optional)
        service_attachment = string (Optional)
      }
    }
  }

  lock_config block "list" (Optional) {
    locked = bool (Required)
    reason = string (Optional)
  }

  log_config block "list" (Optional) {
    enabled = bool (Required)
    level = string (Optional, Computed)
  }

  node_config block "list" (Optional) {
    max_node_count = number (Optional, Computed)
    min_node_count = number (Optional, Computed)
  }

  ssl_config block "list" (Optional) {
    type = string (Required)
    client_cert_type = string (Optional)
    server_cert_type = string (Optional)
    trust_model = string (Optional)
    use_ssl = bool (Optional)

    additional_variable block "list" (Optional) {
      key = string (Required)
      boolean_value = bool (Optional)
      integer_value = number (Optional)
      string_value = string (Optional)

      encryption_key_value block "list" (Optional) {
        kms_key_name = string (Optional)
        type = string (Optional)
      }

      secret_value block "list" (Optional) {
        secret_version = string (Required)
      }
    }

    client_certificate block "list" (Optional) {
      secret_version = string (Required)
    }

    client_private_key block "list" (Optional) {
      secret_version = string (Required)
    }

    client_private_key_pass block "list" (Optional) {
      secret_version = string (Required)
    }

    private_server_certificate block "list" (Optional) {
      secret_version = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
