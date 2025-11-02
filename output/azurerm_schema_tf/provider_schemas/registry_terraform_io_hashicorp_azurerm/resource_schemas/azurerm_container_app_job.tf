resource "azurerm_container_app_job" "name" {
  container_app_environment_id = string (Required)
  location = string (Required)
  name = string (Required)
  replica_timeout_in_seconds = number (Required)
  resource_group_name = string (Required)
  event_stream_endpoint = string (Computed)
  id = string (Optional, Computed)
  outbound_ip_addresses = ['list', 'string'] (Computed)
  replica_retry_limit = number (Optional)
  tags = ['map', 'string'] (Optional)
  workload_profile_name = string (Optional)

  event_trigger_config block "list" (Optional) {
    parallelism = number (Optional)
    replica_completion_count = number (Optional)

    scale block "list" (Optional) {
      max_executions = number (Optional)
      min_executions = number (Optional)
      polling_interval_in_seconds = number (Optional)

      rules block "list" (Optional) {
        custom_rule_type = string (Required)
        metadata = ['map', 'string'] (Required)
        name = string (Required)

        authentication block "list" (Optional) {
          secret_name = string (Required)
          trigger_parameter = string (Required)
        }
      }
    }
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  manual_trigger_config block "list" (Optional) {
    parallelism = number (Optional)
    replica_completion_count = number (Optional)
  }

  registry block "list" (Optional) {
    server = string (Required)
    identity = string (Optional)
    password_secret_name = string (Optional)
    username = string (Optional)
  }

  schedule_trigger_config block "list" (Optional) {
    cron_expression = string (Required)
    parallelism = number (Optional)
    replica_completion_count = number (Optional)
  }

  secret block "set" (Optional) {
    name = string (Required)
    identity = string (Optional)
    key_vault_secret_id = string (Optional)
    value = string (Optional)
  }

  template block "list" (Required) {

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
