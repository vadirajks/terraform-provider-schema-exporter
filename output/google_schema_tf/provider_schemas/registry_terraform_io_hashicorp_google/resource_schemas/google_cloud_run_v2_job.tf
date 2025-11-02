resource "google_cloud_run_v2_job" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  client = string (Optional)
  client_version = string (Optional)
  conditions = ['list', ['object', {'execution_reason': 'string', 'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'revision_reason': 'string', 'severity': 'string', 'state': 'string', 'type': 'string'}]] (Computed)
  create_time = string (Computed)
  creator = string (Computed)
  delete_time = string (Computed)
  deletion_protection = bool (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  execution_count = number (Computed)
  expire_time = string (Computed)
  generation = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  last_modifier = string (Computed)
  latest_created_execution = ['list', ['object', {'completion_time': 'string', 'create_time': 'string', 'name': 'string'}]] (Computed)
  launch_stage = string (Optional, Computed)
  observed_generation = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  terminal_condition = ['list', ['object', {'execution_reason': 'string', 'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'revision_reason': 'string', 'severity': 'string', 'state': 'string', 'type': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  binary_authorization block "list" (Optional) {
    breakglass_justification = string (Optional)
    policy = string (Optional)
    use_default = bool (Optional)
  }

  template block "list" (Required) {
    annotations = ['map', 'string'] (Optional)
    labels = ['map', 'string'] (Optional)
    parallelism = number (Optional, Computed)
    task_count = number (Optional, Computed)

    template block "list" (Required) {
      encryption_key = string (Optional)
      execution_environment = string (Optional, Computed)
      gpu_zonal_redundancy_disabled = bool (Optional)
      max_retries = number (Optional)
      service_account = string (Optional, Computed)
      timeout = string (Optional, Computed)

      containers block "list" (Optional) {
        image = string (Required)
        args = ['list', 'string'] (Optional)
        command = ['list', 'string'] (Optional)
        depends_on = ['list', 'string'] (Optional)
        name = string (Optional)
        working_dir = string (Optional)

        env block "set" (Optional) {
          name = string (Required)
          value = string (Optional)

          value_source block "list" (Optional) {

            secret_key_ref block "list" (Optional) {
              secret = string (Required)
              version = string (Required)
            }
          }
        }

        ports block "list" (Optional) {
          container_port = number (Optional)
          name = string (Optional)
        }

        resources block "list" (Optional) {
          limits = ['map', 'string'] (Optional, Computed)
        }

        startup_probe block "list" (Optional) {
          failure_threshold = number (Optional)
          initial_delay_seconds = number (Optional)
          period_seconds = number (Optional)
          timeout_seconds = number (Optional)

          grpc block "list" (Optional) {
            port = number (Optional, Computed)
            service = string (Optional)
          }

          http_get block "list" (Optional) {
            path = string (Optional)
            port = number (Optional, Computed)

            http_headers block "list" (Optional) {
              name = string (Required)
              value = string (Optional)
            }
          }

          tcp_socket block "list" (Optional) {
            port = number (Optional, Computed)
          }
        }

        volume_mounts block "list" (Optional) {
          mount_path = string (Required)
          name = string (Required)
          sub_path = string (Optional)
        }
      }

      node_selector block "list" (Optional) {
        accelerator = string (Required)
      }

      volumes block "list" (Optional) {
        name = string (Required)

        cloud_sql_instance block "list" (Optional) {
          instances = ['list', 'string'] (Optional)
        }

        empty_dir block "list" (Optional) {
          medium = string (Optional)
          size_limit = string (Optional)
        }

        gcs block "list" (Optional) {
          bucket = string (Required)
          mount_options = ['list', 'string'] (Optional)
          read_only = bool (Optional)
        }

        nfs block "list" (Optional) {
          server = string (Required)
          path = string (Optional)
          read_only = bool (Optional)
        }

        secret block "list" (Optional) {
          secret = string (Required)
          default_mode = number (Optional)

          items block "list" (Optional) {
            path = string (Required)
            version = string (Required)
            mode = number (Optional)
          }
        }
      }

      vpc_access block "list" (Optional) {
        connector = string (Optional)
        egress = string (Optional, Computed)

        network_interfaces block "list" (Optional) {
          network = string (Optional, Computed)
          subnetwork = string (Optional, Computed)
          tags = ['list', 'string'] (Optional)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
