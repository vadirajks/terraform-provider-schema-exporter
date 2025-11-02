resource "aws_batch_job_definition" "name" {
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  arn_prefix = string (Computed)
  container_properties = string (Optional)
  deregister_on_new_revision = bool (Optional)
  ecs_properties = string (Optional)
  id = string (Optional, Computed)
  node_properties = string (Optional)
  parameters = ['map', 'string'] (Optional)
  platform_capabilities = ['set', 'string'] (Optional)
  propagate_tags = bool (Optional)
  region = string (Optional, Computed)
  revision = number (Computed)
  scheduling_priority = number (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  eks_properties block "list" (Optional) {

    pod_properties block "list" (Required) {
      dns_policy = string (Optional)
      host_network = bool (Optional)
      service_account_name = string (Optional)
      share_process_namespace = bool (Optional)

      containers block "list" (Required) {
        image = string (Required)
        args = ['list', 'string'] (Optional)
        command = ['list', 'string'] (Optional)
        image_pull_policy = string (Optional)
        name = string (Optional)

        env block "set" (Optional) {
          name = string (Required)
          value = string (Required)
        }

        resources block "list" (Optional) {
          limits = ['map', 'string'] (Optional)
          requests = ['map', 'string'] (Optional)
        }

        security_context block "list" (Optional) {
          privileged = bool (Optional)
          read_only_root_file_system = bool (Optional)
          run_as_group = number (Optional)
          run_as_non_root = bool (Optional)
          run_as_user = number (Optional)
        }

        volume_mounts block "list" (Optional) {
          mount_path = string (Required)
          name = string (Required)
          read_only = bool (Optional)
        }
      }

      image_pull_secret block "list" (Optional) {
        name = string (Required)
      }

      init_containers block "list" (Optional) {
        image = string (Required)
        args = ['list', 'string'] (Optional)
        command = ['list', 'string'] (Optional)
        image_pull_policy = string (Optional)
        name = string (Optional)

        env block "set" (Optional) {
          name = string (Required)
          value = string (Required)
        }

        resources block "list" (Optional) {
          limits = ['map', 'string'] (Optional)
          requests = ['map', 'string'] (Optional)
        }

        security_context block "list" (Optional) {
          privileged = bool (Optional)
          read_only_root_file_system = bool (Optional)
          run_as_group = number (Optional)
          run_as_non_root = bool (Optional)
          run_as_user = number (Optional)
        }

        volume_mounts block "list" (Optional) {
          mount_path = string (Required)
          name = string (Required)
          read_only = bool (Optional)
        }
      }

      metadata block "list" (Optional) {
        labels = ['map', 'string'] (Optional)
      }

      volumes block "list" (Optional) {
        name = string (Optional)

        empty_dir block "list" (Optional) {
          size_limit = string (Required)
          medium = string (Optional)
        }

        host_path block "list" (Optional) {
          path = string (Required)
        }

        secret block "list" (Optional) {
          secret_name = string (Required)
          optional = bool (Optional)
        }
      }
    }
  }

  retry_strategy block "list" (Optional) {
    attempts = number (Optional)

    evaluate_on_exit block "list" (Optional) {
      action = string (Required)
      on_exit_code = string (Optional)
      on_reason = string (Optional)
      on_status_reason = string (Optional)
    }
  }

  timeout block "list" (Optional) {
    attempt_duration_seconds = number (Optional)
  }
}
