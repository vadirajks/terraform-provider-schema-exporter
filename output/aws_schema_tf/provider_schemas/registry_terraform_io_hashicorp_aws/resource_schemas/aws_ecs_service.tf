resource "aws_ecs_service" "name" {
  name = string (Required)
  arn = string (Computed)
  availability_zone_rebalancing = string (Optional, Computed)
  cluster = string (Optional, Computed)
  deployment_maximum_percent = number (Optional)
  deployment_minimum_healthy_percent = number (Optional)
  desired_count = number (Optional)
  enable_ecs_managed_tags = bool (Optional)
  enable_execute_command = bool (Optional)
  force_delete = bool (Optional)
  force_new_deployment = bool (Optional)
  health_check_grace_period_seconds = number (Optional)
  iam_role = string (Optional, Computed)
  id = string (Optional, Computed)
  launch_type = string (Optional, Computed)
  platform_version = string (Optional, Computed)
  propagate_tags = string (Optional)
  region = string (Optional, Computed)
  scheduling_strategy = string (Optional)
  sigint_rollback = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  task_definition = string (Optional)
  triggers = ['map', 'string'] (Optional, Computed)
  wait_for_steady_state = bool (Optional)

  alarms block "list" (Optional) {
    alarm_names = ['set', 'string'] (Required)
    enable = bool (Required)
    rollback = bool (Required)
  }

  capacity_provider_strategy block "set" (Optional) {
    capacity_provider = string (Required)
    base = number (Optional)
    weight = number (Optional)
  }

  deployment_circuit_breaker block "list" (Optional) {
    enable = bool (Required)
    rollback = bool (Required)
  }

  deployment_configuration block "list" (Optional) {
    bake_time_in_minutes = string (Optional, Computed)
    strategy = string (Optional, Computed)

    lifecycle_hook block "set" (Optional) {
      hook_target_arn = string (Required)
      lifecycle_stages = ['list', 'string'] (Required)
      role_arn = string (Required)
      hook_details = string (Optional)
    }
  }

  deployment_controller block "list" (Optional) {
    type = string (Optional)
  }

  load_balancer block "set" (Optional) {
    container_name = string (Required)
    container_port = number (Required)
    elb_name = string (Optional)
    target_group_arn = string (Optional)

    advanced_configuration block "list" (Optional) {
      alternate_target_group_arn = string (Required)
      production_listener_rule = string (Required)
      role_arn = string (Required)
      test_listener_rule = string (Optional)
    }
  }

  network_configuration block "list" (Optional) {
    subnets = ['set', 'string'] (Required)
    assign_public_ip = bool (Optional)
    security_groups = ['set', 'string'] (Optional)
  }

  ordered_placement_strategy block "list" (Optional) {
    type = string (Required)
    field = string (Optional)
  }

  placement_constraints block "set" (Optional) {
    type = string (Required)
    expression = string (Optional)
  }

  service_connect_configuration block "list" (Optional) {
    enabled = bool (Required)
    namespace = string (Optional, Computed)

    log_configuration block "list" (Optional) {
      log_driver = string (Required)
      options = ['map', 'string'] (Optional, Computed)

      secret_option block "list" (Optional) {
        name = string (Required)
        value_from = string (Required)
      }
    }

    service block "list" (Optional) {
      port_name = string (Required)
      discovery_name = string (Optional, Computed)
      ingress_port_override = number (Optional)

      client_alias block "list" (Optional) {
        port = number (Required)
        dns_name = string (Optional, Computed)

        test_traffic_rules block "list" (Optional) {

          header block "list" (Optional) {
            name = string (Required)

            value block "list" (Required) {
              exact = string (Required)
            }
          }
        }
      }

      timeout block "list" (Optional) {
        idle_timeout_seconds = number (Optional)
        per_request_timeout_seconds = number (Optional)
      }

      tls block "list" (Optional) {
        kms_key = string (Optional)
        role_arn = string (Optional)

        issuer_cert_authority block "list" (Required) {
          aws_pca_authority_arn = string (Required)
        }
      }
    }
  }

  service_registries block "list" (Optional) {
    registry_arn = string (Required)
    container_name = string (Optional)
    container_port = number (Optional)
    port = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  volume_configuration block "list" (Optional) {
    name = string (Required)

    managed_ebs_volume block "list" (Required) {
      role_arn = string (Required)
      encrypted = bool (Optional)
      file_system_type = string (Optional)
      iops = number (Optional)
      kms_key_id = string (Optional)
      size_in_gb = number (Optional)
      snapshot_id = string (Optional)
      throughput = number (Optional)
      volume_initialization_rate = number (Optional)
      volume_type = string (Optional)

      tag_specifications block "list" (Optional) {
        resource_type = string (Required)
        propagate_tags = string (Optional)
        tags = ['map', 'string'] (Optional)
      }
    }
  }

  vpc_lattice_configurations block "set" (Optional) {
    port_name = string (Required)
    role_arn = string (Required)
    target_group_arn = string (Required)
  }
}
