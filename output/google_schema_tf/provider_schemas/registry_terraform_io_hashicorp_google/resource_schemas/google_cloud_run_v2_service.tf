resource "google_cloud_run_v2_service" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  client = string (Optional)
  client_version = string (Optional)
  conditions = ['list', ['object', {'execution_reason': 'string', 'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'revision_reason': 'string', 'severity': 'string', 'state': 'string', 'type': 'string'}]] (Computed)
  create_time = string (Computed)
  creator = string (Computed)
  custom_audiences = ['list', 'string'] (Optional)
  default_uri_disabled = bool (Optional)
  delete_time = string (Computed)
  deletion_protection = bool (Optional)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  expire_time = string (Computed)
  generation = string (Computed)
  id = string (Optional, Computed)
  ingress = string (Optional, Computed)
  invoker_iam_disabled = bool (Optional)
  labels = ['map', 'string'] (Optional)
  last_modifier = string (Computed)
  latest_created_revision = string (Computed)
  latest_ready_revision = string (Computed)
  launch_stage = string (Optional, Computed)
  observed_generation = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  terminal_condition = ['list', ['object', {'execution_reason': 'string', 'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'revision_reason': 'string', 'severity': 'string', 'state': 'string', 'type': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  traffic_statuses = ['list', ['object', {'percent': 'number', 'revision': 'string', 'tag': 'string', 'type': 'string', 'uri': 'string'}]] (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  uri = string (Computed)
  urls = ['list', 'string'] (Computed)

  binary_authorization block "list" (Optional) {
    breakglass_justification = string (Optional)
    policy = string (Optional)
    use_default = bool (Optional)
  }

  build_config block "list" (Optional) {
    base_image = string (Optional)
    enable_automatic_updates = bool (Optional)
    environment_variables = ['map', 'string'] (Optional)
    function_target = string (Optional)
    image_uri = string (Optional)
    name = string (Computed)
    service_account = string (Optional)
    source_location = string (Optional)
    worker_pool = string (Optional)
  }

  multi_region_settings block "list" (Optional) {
    multi_region_id = string (Computed)
    regions = ['list', 'string'] (Optional)
  }

  scaling block "list" (Optional) {
    manual_instance_count = number (Optional)
    max_instance_count = number (Optional)
    min_instance_count = number (Optional)
    scaling_mode = string (Optional)
  }

  template block "list" (Required) {
    annotations = ['map', 'string'] (Optional)
    encryption_key = string (Optional)
    execution_environment = string (Optional)
    gpu_zonal_redundancy_disabled = bool (Optional)
    health_check_disabled = bool (Optional)
    labels = ['map', 'string'] (Optional)
    max_instance_request_concurrency = number (Optional, Computed)
    revision = string (Optional)
    service_account = string (Optional, Computed)
    session_affinity = bool (Optional)
    timeout = string (Optional, Computed)

    containers block "list" (Optional) {
      image = string (Required)
      args = ['list', 'string'] (Optional)
      base_image_uri = string (Optional)
      build_info = ['list', ['object', {'function_target': 'string', 'source_location': 'string'}]] (Computed)
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
            version = string (Optional)
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

        tcp_socket block "list" (Optional) {
          port = number (Required)
        }
      }

      ports block "list" (Optional) {
        container_port = number (Optional)
        name = string (Optional, Computed)
      }

      resources block "list" (Optional) {
        cpu_idle = bool (Optional)
        limits = ['map', 'string'] (Optional, Computed)
        startup_cpu_boost = bool (Optional)
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

    scaling block "list" (Optional) {
      max_instance_count = number (Optional)
      min_instance_count = number (Optional)
    }

    volumes block "list" (Optional) {
      name = string (Required)

      cloud_sql_instance block "list" (Optional) {
        instances = ['set', 'string'] (Optional)
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
        path = string (Required)
        server = string (Required)
        read_only = bool (Optional)
      }

      secret block "list" (Optional) {
        secret = string (Required)
        default_mode = number (Optional)

        items block "list" (Optional) {
          path = string (Required)
          mode = number (Optional)
          version = string (Optional)
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

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  traffic block "list" (Optional) {
    percent = number (Optional, Computed)
    revision = string (Optional)
    tag = string (Optional)
    type = string (Optional)
  }
}
