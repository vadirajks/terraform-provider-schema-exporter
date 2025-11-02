resource "azurerm_container_app" "name" {
  container_app_environment_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  revision_mode = string (Required)
  custom_domain_verification_id = string (Computed)
  id = string (Optional, Computed)
  latest_revision_fqdn = string (Computed)
  latest_revision_name = string (Computed)
  location = string (Computed)
  max_inactive_revisions = number (Optional)
  outbound_ip_addresses = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
  workload_profile_name = string (Optional)

  dapr block "list" (Optional) {
    app_id = string (Required)
    app_port = number (Optional)
    app_protocol = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  ingress block "list" (Optional) {
    target_port = number (Required)
    allow_insecure_connections = bool (Optional)
    client_certificate_mode = string (Optional)
    custom_domain = ['list', ['object', {'certificate_binding_type': 'string', 'certificate_id': 'string', 'name': 'string'}]] (Computed)
    exposed_port = number (Optional)
    external_enabled = bool (Optional)
    fqdn = string (Computed)
    transport = string (Optional)

    cors block "list" (Optional) {
      allowed_origins = ['list', 'string'] (Required)
      allow_credentials_enabled = bool (Optional)
      allowed_headers = ['list', 'string'] (Optional)
      allowed_methods = ['list', 'string'] (Optional)
      exposed_headers = ['list', 'string'] (Optional)
      max_age_in_seconds = number (Optional)
    }

    ip_security_restriction block "list" (Optional) {
      action = string (Required)
      ip_address_range = string (Required)
      name = string (Required)
      description = string (Optional)
    }

    traffic_weight block "list" (Required) {
      percentage = number (Required)
      label = string (Optional)
      latest_revision = bool (Optional)
      revision_suffix = string (Optional)
    }
  }

  registry block "list" (Optional) {
    server = string (Required)
    identity = string (Optional)
    password_secret_name = string (Optional)
    username = string (Optional)
  }

  secret block "set" (Optional) {
    name = string (Required)
    identity = string (Optional)
    key_vault_secret_id = string (Optional)
    value = string (Optional)
  }

  template block "list" (Required) {
    max_replicas = number (Optional)
    min_replicas = number (Optional)
    revision_suffix = string (Optional, Computed)
    termination_grace_period_seconds = number (Optional)

    azure_queue_scale_rule block "list" (Optional) {
      name = string (Required)
      queue_length = number (Required)
      queue_name = string (Required)

      authentication block "list" (Required) {
        secret_name = string (Required)
        trigger_parameter = string (Required)
      }
    }

    container block "list" (Required) {
      cpu = number (Required)
      image = string (Required)
      memory = string (Required)
      name = string (Required)
      args = ['list', 'string'] (Optional)
      command = ['list', 'string'] (Optional)
      ephemeral_storage = string (Computed)

      env block "list" (Optional) {
        name = string (Required)
        secret_name = string (Optional)
        value = string (Optional)
      }

      liveness_probe block "list" (Optional) {
        port = number (Required)
        transport = string (Required)
        failure_count_threshold = number (Optional)
        host = string (Optional)
        initial_delay = number (Optional)
        interval_seconds = number (Optional)
        path = string (Optional, Computed)
        termination_grace_period_seconds = number (Computed)
        timeout = number (Optional)

        header block "list" (Optional) {
          name = string (Required)
          value = string (Required)
        }
      }

      readiness_probe block "list" (Optional) {
        port = number (Required)
        transport = string (Required)
        failure_count_threshold = number (Optional)
        host = string (Optional)
        initial_delay = number (Optional)
        interval_seconds = number (Optional)
        path = string (Optional, Computed)
        success_count_threshold = number (Optional)
        timeout = number (Optional)

        header block "list" (Optional) {
          name = string (Required)
          value = string (Required)
        }
      }

      startup_probe block "list" (Optional) {
        port = number (Required)
        transport = string (Required)
        failure_count_threshold = number (Optional)
        host = string (Optional)
        initial_delay = number (Optional)
        interval_seconds = number (Optional)
        path = string (Optional, Computed)
        termination_grace_period_seconds = number (Computed)
        timeout = number (Optional)

        header block "list" (Optional) {
          name = string (Required)
          value = string (Required)
        }
      }

      volume_mounts block "list" (Optional) {
        name = string (Required)
        path = string (Required)
        sub_path = string (Optional)
      }
    }

    custom_scale_rule block "list" (Optional) {
      custom_rule_type = string (Required)
      metadata = ['map', 'string'] (Required)
      name = string (Required)

      authentication block "list" (Optional) {
        secret_name = string (Required)
        trigger_parameter = string (Required)
      }
    }

    http_scale_rule block "list" (Optional) {
      concurrent_requests = string (Required)
      name = string (Required)

      authentication block "list" (Optional) {
        secret_name = string (Required)
        trigger_parameter = string (Optional)
      }
    }

    init_container block "list" (Optional) {
      image = string (Required)
      name = string (Required)
      args = ['list', 'string'] (Optional)
      command = ['list', 'string'] (Optional)
      cpu = number (Optional)
      ephemeral_storage = string (Computed)
      memory = string (Optional)

      env block "list" (Optional) {
        name = string (Required)
        secret_name = string (Optional)
        value = string (Optional)
      }

      volume_mounts block "list" (Optional) {
        name = string (Required)
        path = string (Required)
        sub_path = string (Optional)
      }
    }

    tcp_scale_rule block "list" (Optional) {
      concurrent_requests = string (Required)
      name = string (Required)

      authentication block "list" (Optional) {
        secret_name = string (Required)
        trigger_parameter = string (Optional)
      }
    }

    volume block "list" (Optional) {
      name = string (Required)
      mount_options = string (Optional)
      storage_name = string (Optional)
      storage_type = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
