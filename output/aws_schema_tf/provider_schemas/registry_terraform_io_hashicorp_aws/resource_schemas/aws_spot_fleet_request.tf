resource "aws_spot_fleet_request" "name" {
  iam_fleet_role = string (Required)
  target_capacity = number (Required)
  allocation_strategy = string (Optional)
  client_token = string (Computed)
  context = string (Optional)
  excess_capacity_termination_policy = string (Optional)
  fleet_type = string (Optional)
  id = string (Optional, Computed)
  instance_interruption_behaviour = string (Optional)
  instance_pools_to_use_count = number (Optional)
  load_balancers = ['set', 'string'] (Optional, Computed)
  on_demand_allocation_strategy = string (Optional)
  on_demand_max_total_price = string (Optional)
  on_demand_target_capacity = number (Optional)
  region = string (Optional, Computed)
  replace_unhealthy_instances = bool (Optional)
  spot_price = string (Optional)
  spot_request_state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  target_capacity_unit_type = string (Optional)
  target_group_arns = ['set', 'string'] (Optional, Computed)
  terminate_instances_on_delete = string (Optional)
  terminate_instances_with_expiration = bool (Optional)
  valid_from = string (Optional)
  valid_until = string (Optional)
  wait_for_fulfillment = bool (Optional)

  launch_specification block "set" (Optional) {
    ami = string (Required)
    instance_type = string (Required)
    associate_public_ip_address = bool (Optional)
    availability_zone = string (Optional, Computed)
    ebs_optimized = bool (Optional)
    iam_instance_profile = string (Optional)
    iam_instance_profile_arn = string (Optional)
    key_name = string (Optional, Computed)
    monitoring = bool (Optional)
    placement_group = string (Optional, Computed)
    placement_tenancy = string (Optional)
    spot_price = string (Optional)
    subnet_id = string (Optional, Computed)
    tags = ['map', 'string'] (Optional)
    user_data = string (Optional)
    vpc_security_group_ids = ['set', 'string'] (Optional, Computed)
    weighted_capacity = string (Optional)

    ebs_block_device block "set" (Optional) {
      device_name = string (Required)
      delete_on_termination = bool (Optional)
      encrypted = bool (Optional, Computed)
      iops = number (Optional, Computed)
      kms_key_id = string (Optional, Computed)
      snapshot_id = string (Optional, Computed)
      throughput = number (Optional, Computed)
      volume_size = number (Optional, Computed)
      volume_type = string (Optional, Computed)
    }

    ephemeral_block_device block "set" (Optional) {
      device_name = string (Required)
      virtual_name = string (Required)
    }

    root_block_device block "set" (Optional) {
      delete_on_termination = bool (Optional)
      encrypted = bool (Optional, Computed)
      iops = number (Optional, Computed)
      kms_key_id = string (Optional, Computed)
      throughput = number (Optional, Computed)
      volume_size = number (Optional, Computed)
      volume_type = string (Optional, Computed)
    }
  }

  launch_template_config block "set" (Optional) {

    launch_template_specification block "list" (Required) {
      id = string (Optional)
      name = string (Optional)
      version = string (Optional)
    }

    overrides block "set" (Optional) {
      availability_zone = string (Optional)
      instance_type = string (Optional)
      priority = number (Optional, Computed)
      spot_price = string (Optional, Computed)
      subnet_id = string (Optional, Computed)
      weighted_capacity = number (Optional, Computed)

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
    }
  }

  spot_maintenance_strategies block "list" (Optional) {

    capacity_rebalance block "list" (Optional) {
      replacement_strategy = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
