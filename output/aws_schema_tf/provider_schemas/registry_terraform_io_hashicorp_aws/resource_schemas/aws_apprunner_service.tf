resource "aws_apprunner_service" "name" {
  service_name = string (Required)
  arn = string (Computed)
  auto_scaling_configuration_arn = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  service_id = string (Computed)
  service_url = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  encryption_configuration block "list" (Optional) {
    kms_key = string (Required)
  }

  health_check_configuration block "list" (Optional) {
    healthy_threshold = number (Optional)
    interval = number (Optional)
    path = string (Optional)
    protocol = string (Optional)
    timeout = number (Optional)
    unhealthy_threshold = number (Optional)
  }

  instance_configuration block "list" (Optional) {
    cpu = string (Optional)
    instance_role_arn = string (Optional)
    memory = string (Optional)
  }

  network_configuration block "list" (Optional) {
    ip_address_type = string (Optional)

    egress_configuration block "list" (Optional) {
      egress_type = string (Optional, Computed)
      vpc_connector_arn = string (Optional)
    }

    ingress_configuration block "list" (Optional) {
      is_publicly_accessible = bool (Optional)
    }
  }

  observability_configuration block "list" (Optional) {
    observability_enabled = bool (Required)
    observability_configuration_arn = string (Optional)
  }

  source_configuration block "list" (Required) {
    auto_deployments_enabled = bool (Optional)

    authentication_configuration block "list" (Optional) {
      access_role_arn = string (Optional)
      connection_arn = string (Optional)
    }

    code_repository block "list" (Optional) {
      repository_url = string (Required)
      source_directory = string (Optional, Computed)

      code_configuration block "list" (Optional) {
        configuration_source = string (Required)

        code_configuration_values block "list" (Optional) {
          runtime = string (Required)
          build_command = string (Optional)
          port = string (Optional)
          runtime_environment_secrets = ['map', 'string'] (Optional)
          runtime_environment_variables = ['map', 'string'] (Optional)
          start_command = string (Optional)
        }
      }

      source_code_version block "list" (Required) {
        type = string (Required)
        value = string (Required)
      }
    }

    image_repository block "list" (Optional) {
      image_identifier = string (Required)
      image_repository_type = string (Required)

      image_configuration block "list" (Optional) {
        port = string (Optional)
        runtime_environment_secrets = ['map', 'string'] (Optional)
        runtime_environment_variables = ['map', 'string'] (Optional)
        start_command = string (Optional)
      }
    }
  }
}
