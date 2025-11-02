resource "aws_emrserverless_application" "name" {
  name = string (Required)
  release_label = string (Required)
  type = string (Required)
  architecture = string (Optional)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  auto_start_configuration block "list" (Optional) {
    enabled = bool (Optional)
  }

  auto_stop_configuration block "list" (Optional) {
    enabled = bool (Optional)
    idle_timeout_minutes = number (Optional)
  }

  image_configuration block "list" (Optional) {
    image_uri = string (Required)
  }

  initial_capacity block "set" (Optional) {
    initial_capacity_type = string (Required)

    initial_capacity_config block "list" (Optional) {
      worker_count = number (Required)

      worker_configuration block "list" (Optional) {
        cpu = string (Required)
        memory = string (Required)
        disk = string (Optional, Computed)
      }
    }
  }

  interactive_configuration block "list" (Optional) {
    livy_endpoint_enabled = bool (Optional, Computed)
    studio_enabled = bool (Optional, Computed)
  }

  maximum_capacity block "list" (Optional) {
    cpu = string (Required)
    memory = string (Required)
    disk = string (Optional, Computed)
  }

  monitoring_configuration block "list" (Optional) {

    cloudwatch_logging_configuration block "list" (Optional) {
      enabled = bool (Required)
      encryption_key_arn = string (Optional)
      log_group_name = string (Optional)
      log_stream_name_prefix = string (Optional)

      log_types block "set" (Optional) {
        name = string (Required)
        values = ['set', 'string'] (Required)
      }
    }

    managed_persistence_monitoring_configuration block "list" (Optional) {
      enabled = bool (Optional)
      encryption_key_arn = string (Optional)
    }

    prometheus_monitoring_configuration block "list" (Optional) {
      remote_write_url = string (Optional)
    }

    s3_monitoring_configuration block "list" (Optional) {
      encryption_key_arn = string (Optional)
      log_uri = string (Optional)
    }
  }

  network_configuration block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Optional)
    subnet_ids = ['set', 'string'] (Optional)
  }

  runtime_configuration block "list" (Optional) {
    classification = string (Required)
    properties = ['map', 'string'] (Optional)
  }

  scheduler_configuration block "list" (Optional) {
    max_concurrent_runs = number (Optional, Computed)
    queue_timeout_minutes = number (Optional, Computed)
  }
}
