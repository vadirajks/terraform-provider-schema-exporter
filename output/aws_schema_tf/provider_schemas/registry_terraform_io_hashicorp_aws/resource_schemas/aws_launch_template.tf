resource "aws_launch_template" "name" {
  arn = string (Computed)
  default_version = number (Optional, Computed)
  description = string (Optional)
  disable_api_stop = bool (Optional)
  disable_api_termination = bool (Optional)
  ebs_optimized = string (Optional)
  id = string (Optional, Computed)
  image_id = string (Optional)
  instance_initiated_shutdown_behavior = string (Optional)
  instance_type = string (Optional)
  kernel_id = string (Optional)
  key_name = string (Optional)
  latest_version = number (Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  ram_disk_id = string (Optional)
  region = string (Optional, Computed)
  security_group_names = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  update_default_version = bool (Optional)
  user_data = string (Optional)
  vpc_security_group_ids = ['set', 'string'] (Optional)

  block_device_mappings block "list" (Optional) {
    device_name = string (Optional)
    no_device = string (Optional)
    virtual_name = string (Optional)

    ebs block "list" (Optional) {
      delete_on_termination = string (Optional)
      encrypted = string (Optional)
      iops = number (Optional, Computed)
      kms_key_id = string (Optional)
      snapshot_id = string (Optional)
      throughput = number (Optional, Computed)
      volume_initialization_rate = number (Optional, Computed)
      volume_size = number (Optional, Computed)
      volume_type = string (Optional, Computed)
    }
  }

  capacity_reservation_specification block "list" (Optional) {
    capacity_reservation_preference = string (Optional)

    capacity_reservation_target block "list" (Optional) {
      capacity_reservation_id = string (Optional)
      capacity_reservation_resource_group_arn = string (Optional)
    }
  }

  cpu_options block "list" (Optional) {
    amd_sev_snp = string (Optional)
    core_count = number (Optional)
    threads_per_core = number (Optional)
  }

  credit_specification block "list" (Optional) {
    cpu_credits = string (Optional)
  }

  enclave_options block "list" (Optional) {
    enabled = bool (Optional)
  }

  hibernation_options block "list" (Optional) {
    configured = bool (Required)
  }

  iam_instance_profile block "list" (Optional) {
    arn = string (Optional)
    name = string (Optional)
  }

  instance_market_options block "list" (Optional) {
    market_type = string (Optional)

    spot_options block "list" (Optional) {
      block_duration_minutes = number (Optional)
      instance_interruption_behavior = string (Optional)
      max_price = string (Optional)
      spot_instance_type = string (Optional)
      valid_until = string (Optional, Computed)
    }
  }

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

  license_specification block "set" (Optional) {
    license_configuration_arn = string (Required)
  }

  maintenance_options block "list" (Optional) {
    auto_recovery = string (Optional)
  }

  metadata_options block "list" (Optional) {
    http_endpoint = string (Optional, Computed)
    http_protocol_ipv6 = string (Optional, Computed)
    http_put_response_hop_limit = number (Optional, Computed)
    http_tokens = string (Optional, Computed)
    instance_metadata_tags = string (Optional, Computed)
  }

  monitoring block "list" (Optional) {
    enabled = bool (Optional)
  }

  network_interfaces block "list" (Optional) {
    associate_carrier_ip_address = string (Optional)
    associate_public_ip_address = string (Optional)
    delete_on_termination = string (Optional)
    description = string (Optional)
    device_index = number (Optional)
    interface_type = string (Optional)
    ipv4_address_count = number (Optional)
    ipv4_addresses = ['set', 'string'] (Optional)
    ipv4_prefix_count = number (Optional)
    ipv4_prefixes = ['set', 'string'] (Optional)
    ipv6_address_count = number (Optional)
    ipv6_addresses = ['set', 'string'] (Optional)
    ipv6_prefix_count = number (Optional)
    ipv6_prefixes = ['set', 'string'] (Optional)
    network_card_index = number (Optional)
    network_interface_id = string (Optional)
    primary_ipv6 = string (Optional)
    private_ip_address = string (Optional)
    security_groups = ['set', 'string'] (Optional)
    subnet_id = string (Optional)

    connection_tracking_specification block "list" (Optional) {
      tcp_established_timeout = number (Optional)
      udp_stream_timeout = number (Optional)
      udp_timeout = number (Optional)
    }

    ena_srd_specification block "list" (Optional) {
      ena_srd_enabled = bool (Optional)

      ena_srd_udp_specification block "list" (Optional) {
        ena_srd_udp_enabled = bool (Optional)
      }
    }
  }

  placement block "list" (Optional) {
    affinity = string (Optional)
    availability_zone = string (Optional)
    group_id = string (Optional)
    group_name = string (Optional)
    host_id = string (Optional)
    host_resource_group_arn = string (Optional)
    partition_number = number (Optional)
    spread_domain = string (Optional)
    tenancy = string (Optional)
  }

  private_dns_name_options block "list" (Optional) {
    enable_resource_name_dns_a_record = bool (Optional)
    enable_resource_name_dns_aaaa_record = bool (Optional)
    hostname_type = string (Optional)
  }

  tag_specifications block "list" (Optional) {
    resource_type = string (Optional)
    tags = ['map', 'string'] (Optional)
  }
}
