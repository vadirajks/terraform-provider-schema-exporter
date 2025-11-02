resource "aws_ecs_capacity_provider" "name" {
  name = string (Required)
  arn = string (Computed)
  cluster = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  auto_scaling_group_provider block "list" (Optional) {
    auto_scaling_group_arn = string (Required)
    managed_draining = string (Optional, Computed)
    managed_termination_protection = string (Optional, Computed)

    managed_scaling block "list" (Optional) {
      instance_warmup_period = number (Optional, Computed)
      maximum_scaling_step_size = number (Optional, Computed)
      minimum_scaling_step_size = number (Optional, Computed)
      status = string (Optional, Computed)
      target_capacity = number (Optional, Computed)
    }
  }

  managed_instances_provider block "list" (Optional) {
    infrastructure_role_arn = string (Required)
    propagate_tags = string (Optional)

    instance_launch_template block "list" (Required) {
      ec2_instance_profile_arn = string (Required)
      monitoring = string (Optional)

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

      network_configuration block "list" (Required) {
        subnets = ['set', 'string'] (Required)
        security_groups = ['set', 'string'] (Optional)
      }

      storage_configuration block "list" (Optional) {
        storage_size_gib = number (Required)
      }
    }
  }
}
