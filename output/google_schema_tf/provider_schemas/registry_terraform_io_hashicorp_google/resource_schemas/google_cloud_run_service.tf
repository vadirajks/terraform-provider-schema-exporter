resource "google_cloud_run_service" "name" {
  location = string (Required)
  name = string (Required)
  autogenerate_revision_name = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  status = ['list', ['object', {'conditions': ['list', ['object', {'message': 'string', 'reason': 'string', 'status': 'string', 'type': 'string'}]], 'latest_created_revision_name': 'string', 'latest_ready_revision_name': 'string', 'observed_generation': 'number', 'traffic': ['list', ['object', {'latest_revision': 'bool', 'percent': 'number', 'revision_name': 'string', 'tag': 'string', 'url': 'string'}]], 'url': 'string'}]] (Computed)

  metadata block "list" (Optional) {
    annotations = ['map', 'string'] (Optional)
    effective_annotations = ['map', 'string'] (Computed)
    effective_labels = ['map', 'string'] (Computed)
    generation = number (Computed)
    labels = ['map', 'string'] (Optional)
    namespace = string (Optional, Computed)
    resource_version = string (Computed)
    self_link = string (Computed)
    terraform_labels = ['map', 'string'] (Computed)
    uid = string (Computed)
  }

  template block "list" (Optional) {

    metadata block "list" (Optional) {
      annotations = ['map', 'string'] (Optional, Computed)
      generation = number (Computed)
      labels = ['map', 'string'] (Optional, Computed)
      name = string (Optional, Computed)
      namespace = string (Optional, Computed)
      resource_version = string (Computed)
      self_link = string (Computed)
      uid = string (Computed)
    }

    spec block "list" (Optional) {
      container_concurrency = number (Optional, Computed)
      node_selector = ['map', 'string'] (Optional)
      service_account_name = string (Optional, Computed)
      serving_state = string (Computed)
      timeout_seconds = number (Optional, Computed)

      containers block "list" (Optional) {
        image = string (Required)
        args = ['list', 'string'] (Optional)
        command = ['list', 'string'] (Optional)
        name = string (Optional, Computed)
        working_dir = string (Optional)

        env block "set" (Optional) {
          name = string (Optional)
          value = string (Optional)

          value_from block "list" (Optional) {

            secret_key_ref block "list" (Required) {
              key = string (Required)
              name = string (Required)
            }
          }
        }

        env_from block "list" (Optional) {
          prefix = string (Optional)

          config_map_ref block "list" (Optional) {
            optional = bool (Optional)

            local_object_reference block "list" (Optional) {
              name = string (Required)
            }
          }

          secret_ref block "list" (Optional) {
            optional = bool (Optional)

            local_object_reference block "list" (Optional) {
              name = string (Required)
            }
          }
        }

        liveness_probe block "list" (Optional) {
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
        }

        ports block "list" (Optional) {
          container_port = number (Optional)
          name = string (Optional, Computed)
          protocol = string (Optional)
        }

        resources block "list" (Optional) {
          limits = ['map', 'string'] (Optional, Computed)
          requests = ['map', 'string'] (Optional)
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

      volumes block "list" (Optional) {
        name = string (Required)

        csi block "list" (Optional) {
          driver = string (Required)
          read_only = bool (Optional, Computed)
          volume_attributes = ['map', 'string'] (Optional)
        }

        empty_dir block "list" (Optional) {
          medium = string (Optional)
          size_limit = string (Optional)
        }

        nfs block "list" (Optional) {
          path = string (Required)
          server = string (Required)
          read_only = bool (Optional)
        }

        secret block "list" (Optional) {
          secret_name = string (Required)
          default_mode = number (Optional)

          items block "list" (Optional) {
            key = string (Required)
            path = string (Required)
            mode = number (Optional)
          }
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  traffic block "list" (Optional) {
    percent = number (Required)
    latest_revision = bool (Optional)
    revision_name = string (Optional)
    tag = string (Optional)
    url = string (Computed)
  }
}
