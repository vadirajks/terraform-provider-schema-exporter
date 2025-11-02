resource "aws_ec2_fleet" "name" {
  arn = string (Computed)
  context = string (Optional)
  excess_capacity_termination_policy = string (Optional)
  fleet_state = string (Optional, Computed)
  fulfilled_capacity = number (Optional, Computed)
  fulfilled_on_demand_capacity = number (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  replace_unhealthy_instances = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  terminate_instances = bool (Optional)
  terminate_instances_with_expiration = bool (Optional)
  type = string (Optional)
  valid_from = string (Optional)
  valid_until = string (Optional)

  fleet_instance_set block "list" (Optional) {
    instance_ids = ['list', 'string'] (Optional, Computed)
    instance_type = string (Optional, Computed)
    lifecycle = string (Optional, Computed)
    platform = string (Optional, Computed)
  }

  launch_template_config block "list" (Required) {

    launch_template_specification block "list" (Optional) {
      version = string (Required)
      launch_template_id = string (Optional)
      launch_template_name = string (Optional)
    }

    override block "list" (Optional) {
      availability_zone = string (Optional)
      instance_type = string (Optional)
      max_price = string (Optional)
      priority = number (Optional)
      subnet_id = string (Optional)
      weighted_capacity = number (Optional)

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

        memory_mib block "list" (Required) {
          min = number (Required)
          max = number (Optional)
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

        vcpu_count block "list" (Required) {
          min = number (Required)
          max = number (Optional)
        }
      }
    }
  }

  on_demand_options block "list" (Optional) {
    allocation_strategy = string (Optional)
    max_total_price = string (Optional)
    min_target_capacity = number (Optional)
    single_availability_zone = bool (Optional)
    single_instance_type = bool (Optional)

    capacity_reservation_options block "list" (Optional) {
      usage_strategy = string (Optional)
    }
  }

  spot_options block "list" (Optional) {
    allocation_strategy = string (Optional)
    instance_interruption_behavior = string (Optional)
    instance_pools_to_use_count = number (Optional)
    max_total_price = string (Optional)
    min_target_capacity = number (Optional)
    single_availability_zone = bool (Optional)
    single_instance_type = bool (Optional)

    maintenance_strategies block "list" (Optional) {

      capacity_rebalance block "list" (Optional) {
        replacement_strategy = string (Optional)
        termination_delay = number (Optional)
      }
    }
  }

  target_capacity_specification block "list" (Required) {
    default_target_capacity_type = string (Required)
    total_target_capacity = number (Required)
    on_demand_target_capacity = number (Optional)
    spot_target_capacity = number (Optional)
    target_capacity_unit_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
