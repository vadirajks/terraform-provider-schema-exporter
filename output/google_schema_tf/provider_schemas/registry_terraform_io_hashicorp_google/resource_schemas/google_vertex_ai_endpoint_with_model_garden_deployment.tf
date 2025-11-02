resource "google_vertex_ai_endpoint_with_model_garden_deployment" "name" {
  location = string (Required)
  deployed_model_display_name = string (Computed)
  deployed_model_id = string (Computed)
  endpoint = string (Computed)
  hugging_face_model_id = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  publisher_model_name = string (Optional)

  deploy_config block "list" (Optional) {
    fast_tryout_enabled = bool (Optional)
    system_labels = ['map', 'string'] (Optional)

    dedicated_resources block "list" (Optional) {
      min_replica_count = number (Required)
      max_replica_count = number (Optional)
      required_replica_count = number (Optional)
      spot = bool (Optional)

      autoscaling_metric_specs block "list" (Optional) {
        metric_name = string (Required)
        target = number (Optional)
      }

      machine_spec block "list" (Required) {
        accelerator_count = number (Optional)
        accelerator_type = string (Optional)
        machine_type = string (Optional)
        multihost_gpu_node_count = number (Optional)
        tpu_topology = string (Optional)

        reservation_affinity block "list" (Optional) {
          reservation_affinity_type = string (Required)
          key = string (Optional)
          values = ['list', 'string'] (Optional)
        }
      }
    }
  }

  endpoint_config block "list" (Optional) {
    dedicated_endpoint_enabled = bool (Optional)
    endpoint_display_name = string (Optional)

    private_service_connect_config block "list" (Optional) {
      enable_private_service_connect = bool (Required)
      project_allowlist = ['list', 'string'] (Optional)
      service_attachment = string (Computed)

      psc_automation_configs block "list" (Optional) {
        network = string (Required)
        project_id = string (Required)
        error_message = string (Computed)
        forwarding_rule = string (Computed)
        ip_address = string (Computed)
        state = string (Computed)
      }
    }
  }

  model_config block "list" (Optional) {
    accept_eula = bool (Optional)
    hugging_face_access_token = string (Optional)
    hugging_face_cache_enabled = bool (Optional)
    model_display_name = string (Optional)

    container_spec block "list" (Optional) {
      image_uri = string (Required)
      args = ['list', 'string'] (Optional)
      command = ['list', 'string'] (Optional)
      deployment_timeout = string (Optional)
      health_route = string (Optional)
      predict_route = string (Optional)
      shared_memory_size_mb = string (Optional)

      env block "list" (Optional) {
        name = string (Required)
        value = string (Required)
      }

      grpc_ports block "list" (Optional) {
        container_port = number (Optional)
      }

      health_probe block "list" (Optional) {
        failure_threshold = number (Optional)
        initial_delay_seconds = number (Optional)
        period_seconds = number (Optional)
        success_threshold = number (Optional)
        timeout_seconds = number (Optional)

        exec block "list" (Optional) {
          command = ['list', 'string'] (Optional)
        }

        grpc block "list" (Optional) {
          port = number (Optional)
          service = string (Optional)
        }

        http_get block "list" (Optional) {
          host = string (Optional)
          path = string (Optional)
          port = number (Optional)
          scheme = string (Optional)

          http_headers block "list" (Optional) {
            name = string (Optional)
            value = string (Optional)
          }
        }

        tcp_socket block "list" (Optional) {
          host = string (Optional)
          port = number (Optional)
        }
      }

      liveness_probe block "list" (Optional) {
        failure_threshold = number (Optional)
        initial_delay_seconds = number (Optional)
        period_seconds = number (Optional)
        success_threshold = number (Optional)
        timeout_seconds = number (Optional)

        exec block "list" (Optional) {
          command = ['list', 'string'] (Optional)
        }

        grpc block "list" (Optional) {
          port = number (Optional)
          service = string (Optional)
        }

        http_get block "list" (Optional) {
          host = string (Optional)
          path = string (Optional)
          port = number (Optional)
          scheme = string (Optional)

          http_headers block "list" (Optional) {
            name = string (Optional)
            value = string (Optional)
          }
        }

        tcp_socket block "list" (Optional) {
          host = string (Optional)
          port = number (Optional)
        }
      }

      ports block "list" (Optional) {
        container_port = number (Optional)
      }

      startup_probe block "list" (Optional) {
        failure_threshold = number (Optional)
        initial_delay_seconds = number (Optional)
        period_seconds = number (Optional)
        success_threshold = number (Optional)
        timeout_seconds = number (Optional)

        exec block "list" (Optional) {
          command = ['list', 'string'] (Optional)
        }

        grpc block "list" (Optional) {
          port = number (Optional)
          service = string (Optional)
        }

        http_get block "list" (Optional) {
          host = string (Optional)
          path = string (Optional)
          port = number (Optional)
          scheme = string (Optional)

          http_headers block "list" (Optional) {
            name = string (Optional)
            value = string (Optional)
          }
        }

        tcp_socket block "list" (Optional) {
          host = string (Optional)
          port = number (Optional)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
