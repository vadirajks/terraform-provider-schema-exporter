resource "aws_instance" "name" {
  ami = string (Optional, Computed)
  arn = string (Computed)
  associate_public_ip_address = bool (Optional, Computed)
  availability_zone = string (Optional, Computed)
  disable_api_stop = bool (Optional, Computed)
  disable_api_termination = bool (Optional, Computed)
  ebs_optimized = bool (Optional, Computed)
  enable_primary_ipv6 = bool (Optional, Computed)
  force_destroy = bool (Optional)
  get_password_data = bool (Optional)
  hibernation = bool (Optional)
  host_id = string (Optional, Computed)
  host_resource_group_arn = string (Optional, Computed)
  iam_instance_profile = string (Optional, Computed)
  id = string (Optional, Computed)
  instance_initiated_shutdown_behavior = string (Optional, Computed)
  instance_lifecycle = string (Computed)
  instance_state = string (Computed)
  instance_type = string (Optional, Computed)
  ipv6_address_count = number (Optional, Computed)
  ipv6_addresses = ['list', 'string'] (Optional, Computed)
  key_name = string (Optional, Computed)
  monitoring = bool (Optional, Computed)
  outpost_arn = string (Computed)
  password_data = string (Computed)
  placement_group = string (Optional, Computed)
  placement_group_id = string (Optional, Computed)
  placement_partition_number = number (Optional, Computed)
  primary_network_interface_id = string (Computed)
  private_dns = string (Computed)
  private_ip = string (Optional, Computed)
  public_dns = string (Computed)
  public_ip = string (Computed)
  region = string (Optional, Computed)
  secondary_private_ips = ['set', 'string'] (Optional, Computed)
  security_groups = ['set', 'string'] (Optional, Computed)
  source_dest_check = bool (Optional)
  spot_instance_request_id = string (Computed)
  subnet_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  tenancy = string (Optional, Computed)
  user_data = string (Optional)
  user_data_base64 = string (Optional, Computed)
  user_data_replace_on_change = bool (Optional)
  volume_tags = ['map', 'string'] (Optional)
  vpc_security_group_ids = ['set', 'string'] (Optional, Computed)

  capacity_reservation_specification block "list" (Optional) {
    capacity_reservation_preference = string (Optional)

    capacity_reservation_target block "list" (Optional) {
      capacity_reservation_id = string (Optional)
      capacity_reservation_resource_group_arn = string (Optional)
    }
  }

  cpu_options block "list" (Optional) {
    amd_sev_snp = string (Optional, Computed)
    core_count = number (Optional, Computed)
    threads_per_core = number (Optional, Computed)
  }

  credit_specification block "list" (Optional) {
    cpu_credits = string (Optional)
  }

  ebs_block_device block "set" (Optional) {
    device_name = string (Required)
    delete_on_termination = bool (Optional)
    encrypted = bool (Optional, Computed)
    iops = number (Optional, Computed)
    kms_key_id = string (Optional, Computed)
    snapshot_id = string (Optional, Computed)
    tags = ['map', 'string'] (Optional)
    tags_all = ['map', 'string'] (Optional, Computed)
    throughput = number (Optional, Computed)
    volume_id = string (Computed)
    volume_size = number (Optional, Computed)
    volume_type = string (Optional, Computed)
  }

  enclave_options block "list" (Optional) {
    enabled = bool (Optional, Computed)
  }

  ephemeral_block_device block "set" (Optional) {
    device_name = string (Required)
    no_device = bool (Optional)
    virtual_name = string (Optional)
  }

  instance_market_options block "list" (Optional) {
    market_type = string (Optional, Computed)

    spot_options block "list" (Optional) {
      instance_interruption_behavior = string (Optional, Computed)
      max_price = string (Optional, Computed)
      spot_instance_type = string (Optional, Computed)
      valid_until = string (Optional, Computed)
    }
  }

  launch_template block "list" (Optional) {
    id = string (Optional, Computed)
    name = string (Optional, Computed)
    version = string (Optional)
  }

  maintenance_options block "list" (Optional) {
    auto_recovery = string (Optional, Computed)
  }

  metadata_options block "list" (Optional) {
    http_endpoint = string (Optional)
    http_protocol_ipv6 = string (Optional)
    http_put_response_hop_limit = number (Optional, Computed)
    http_tokens = string (Optional, Computed)
    instance_metadata_tags = string (Optional, Computed)
  }

  network_interface block "set" (Optional) {
    device_index = number (Required)
    network_interface_id = string (Required)
    delete_on_termination = bool (Optional)
    network_card_index = number (Optional)
  }

  primary_network_interface block "list" (Optional) {
    network_interface_id = string (Required)
    delete_on_termination = bool (Computed)
  }

  private_dns_name_options block "list" (Optional) {
    enable_resource_name_dns_a_record = bool (Optional, Computed)
    enable_resource_name_dns_aaaa_record = bool (Optional, Computed)
    hostname_type = string (Optional, Computed)
  }

  root_block_device block "list" (Optional) {
    delete_on_termination = bool (Optional)
    device_name = string (Computed)
    encrypted = bool (Optional, Computed)
    iops = number (Optional, Computed)
    kms_key_id = string (Optional, Computed)
    tags = ['map', 'string'] (Optional)
    tags_all = ['map', 'string'] (Optional, Computed)
    throughput = number (Optional, Computed)
    volume_id = string (Computed)
    volume_size = number (Optional, Computed)
    volume_type = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
