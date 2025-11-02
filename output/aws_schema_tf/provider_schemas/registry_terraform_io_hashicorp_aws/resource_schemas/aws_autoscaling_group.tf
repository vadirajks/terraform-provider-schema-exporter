resource "aws_autoscaling_group" "name" {
  max_size = number (Required)
  min_size = number (Required)
  arn = string (Computed)
  availability_zones = ['set', 'string'] (Optional, Computed)
  capacity_rebalance = bool (Optional)
  context = string (Optional)
  default_cooldown = number (Optional, Computed)
  default_instance_warmup = number (Optional)
  desired_capacity = number (Optional, Computed)
  desired_capacity_type = string (Optional)
  enabled_metrics = ['set', 'string'] (Optional)
  force_delete = bool (Optional)
  force_delete_warm_pool = bool (Optional)
  health_check_grace_period = number (Optional)
  health_check_type = string (Optional, Computed)
  id = string (Optional, Computed)
  ignore_failed_scaling_activities = bool (Optional)
  launch_configuration = string (Optional)
  load_balancers = ['set', 'string'] (Optional, Computed)
  max_instance_lifetime = number (Optional)
  metrics_granularity = string (Optional)
  min_elb_capacity = number (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  placement_group = string (Optional)
  predicted_capacity = number (Computed)
  protect_from_scale_in = bool (Optional)
  region = string (Optional, Computed)
  service_linked_role_arn = string (Optional, Computed)
  suspended_processes = ['set', 'string'] (Optional)
  target_group_arns = ['set', 'string'] (Optional, Computed)
  termination_policies = ['list', 'string'] (Optional)
  vpc_zone_identifier = ['set', 'string'] (Optional, Computed)
  wait_for_capacity_timeout = string (Optional)
  wait_for_elb_capacity = number (Optional)
  warm_pool_size = number (Computed)

  availability_zone_distribution block "list" (Optional) {
    capacity_distribution_strategy = string (Optional)
  }

  capacity_reservation_specification block "list" (Optional) {
    capacity_reservation_preference = string (Optional, Computed)

    capacity_reservation_target block "list" (Optional) {
      capacity_reservation_ids = ['list', 'string'] (Optional)
      capacity_reservation_resource_group_arns = ['list', 'string'] (Optional)
    }
  }

  initial_lifecycle_hook block "set" (Optional) {
    lifecycle_transition = string (Required)
    name = string (Required)
    default_result = string (Optional, Computed)
    heartbeat_timeout = number (Optional)
    notification_metadata = string (Optional)
    notification_target_arn = string (Optional)
    role_arn = string (Optional)
  }

  instance_maintenance_policy block "list" (Optional) {
    max_healthy_percentage = number (Required)
    min_healthy_percentage = number (Required)
  }

  instance_refresh block "list" (Optional) {
    strategy = string (Required)
    triggers = ['set', 'string'] (Optional)

    preferences block "list" (Optional) {
      auto_rollback = bool (Optional)
      checkpoint_delay = string (Optional)
      checkpoint_percentages = ['list', 'number'] (Optional)
      instance_warmup = string (Optional)
      max_healthy_percentage = number (Optional)
      min_healthy_percentage = number (Optional)
      scale_in_protected_instances = string (Optional)
      skip_matching = bool (Optional)
      standby_instances = string (Optional)

      alarm_specification block "list" (Optional) {
        alarms = ['list', 'string'] (Optional)
      }
    }
  }

  launch_template block "list" (Optional) {
    id = string (Optional, Computed)
    name = string (Optional, Computed)
    version = string (Optional, Computed)
  }

  mixed_instances_policy block "list" (Optional) {

    instances_distribution block "list" (Optional) {
      on_demand_allocation_strategy = string (Optional, Computed)
      on_demand_base_capacity = number (Optional, Computed)
      on_demand_percentage_above_base_capacity = number (Optional, Computed)
      spot_allocation_strategy = string (Optional, Computed)
      spot_instance_pools = number (Optional, Computed)
      spot_max_price = string (Optional)
    }

    launch_template block "list" (Required) {

      launch_template_specification block "list" (Required) {
        launch_template_id = string (Optional, Computed)
        launch_template_name = string (Optional, Computed)
        version = string (Optional, Computed)
      }

      override block "list" (Optional) {
        instance_type = string (Optional)
        weighted_capacity = string (Optional)

        instance_requirements block "list" (Optional) {
          accelerator_manufacturers = ['set', 'string'] (Optional)
          accelerator_names = ['set', 'string'] (Optional)
          accelerator_types = ['set', 'string'] (Optional)
          allowed_instance_types = ['set', 'string'] (Optional)
          bare_metal = string (Optional)
          burstable_performance = string (Optional)
          cpu_manufacturers = ['set', 'string'] (Optional)
          excluded_instance_types = ['set', 'string'] (Optional)
          instance_generations = ['set', 'string'] (Optional)
          local_storage = string (Optional)
          local_storage_types = ['set', 'string'] (Optional)
          max_spot_price_as_percentage_of_optimal_on_demand_price = number (Optional)
          on_demand_max_price_percentage_over_lowest_price = number (Optional)
          require_hibernate_support = bool (Optional)
          spot_max_price_percentage_over_lowest_price = number (Optional)

          accelerator_count block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }

          accelerator_total_memory_mib block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }

          baseline_ebs_bandwidth_mbps block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }

          memory_gib_per_vcpu block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }

          memory_mib block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }

          network_bandwidth_gbps block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }

          network_interface_count block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }

          total_local_storage_gb block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }

          vcpu_count block "list" (Optional) {
            max = number (Optional)
            min = number (Optional)
          }
        }

        launch_template_specification block "list" (Optional) {
          launch_template_id = string (Optional, Computed)
          launch_template_name = string (Optional, Computed)
          version = string (Optional, Computed)
        }
      }
    }
  }

  tag block "set" (Optional) {
    key = string (Required)
    propagate_at_launch = bool (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
    update = string (Optional)
  }

  traffic_source block "set" (Optional) {
    identifier = string (Required)
    type = string (Optional)
  }

  warm_pool block "list" (Optional) {
    max_group_prepared_capacity = number (Optional)
    min_size = number (Optional)
    pool_state = string (Optional)

    instance_reuse_policy block "list" (Optional) {
      reuse_on_scale_in = bool (Optional)
    }
  }
}
