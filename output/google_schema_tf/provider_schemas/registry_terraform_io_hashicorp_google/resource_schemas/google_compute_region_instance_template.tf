resource "google_compute_region_instance_template" "name" {
  machine_type = string (Required)
  can_ip_forward = bool (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  instance_description = string (Optional)
  key_revocation_action_type = string (Optional)
  labels = ['map', 'string'] (Optional)
  metadata = ['map', 'string'] (Optional)
  metadata_fingerprint = string (Computed)
  metadata_startup_script = string (Optional)
  min_cpu_platform = string (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  numeric_id = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_manager_tags = ['map', 'string'] (Optional)
  resource_policies = ['list', 'string'] (Optional)
  self_link = string (Computed)
  tags = ['set', 'string'] (Optional)
  tags_fingerprint = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  advanced_machine_features block "list" (Optional) {
    enable_nested_virtualization = bool (Optional)
    enable_uefi_networking = bool (Optional)
    performance_monitoring_unit = string (Optional)
    threads_per_core = number (Optional)
    turbo_mode = string (Optional)
    visible_core_count = number (Optional)
  }

  confidential_instance_config block "list" (Optional) {
    confidential_instance_type = string (Optional)
    enable_confidential_compute = bool (Optional)
  }

  disk block "list" (Required) {
    architecture = string (Optional, Computed)
    auto_delete = bool (Optional)
    boot = bool (Optional, Computed)
    device_name = string (Optional, Computed)
    disk_name = string (Optional)
    disk_size_gb = number (Optional, Computed)
    disk_type = string (Optional, Computed)
    guest_os_features = ['list', 'string'] (Optional)
    interface = string (Optional, Computed)
    labels = ['map', 'string'] (Optional)
    mode = string (Optional, Computed)
    provisioned_iops = number (Optional, Computed)
    provisioned_throughput = number (Optional, Computed)
    resource_manager_tags = ['map', 'string'] (Optional)
    resource_policies = ['list', 'string'] (Optional)
    source = string (Optional)
    source_image = string (Optional, Computed)
    source_snapshot = string (Optional)
    type = string (Optional, Computed)

    disk_encryption_key block "list" (Optional) {
      kms_key_self_link = string (Optional)
      kms_key_service_account = string (Optional)
    }

    source_image_encryption_key block "list" (Optional) {
      kms_key_self_link = string (Optional)
      kms_key_service_account = string (Optional)
      raw_key = string (Optional)
      rsa_encrypted_key = string (Optional)
    }

    source_snapshot_encryption_key block "list" (Optional) {
      kms_key_self_link = string (Optional)
      kms_key_service_account = string (Optional)
      raw_key = string (Optional)
      rsa_encrypted_key = string (Optional)
    }
  }

  guest_accelerator block "list" (Optional) {
    count = number (Required)
    type = string (Required)
  }

  network_interface block "list" (Optional) {
    internal_ipv6_prefix_length = number (Optional, Computed)
    ipv6_access_type = string (Computed)
    ipv6_address = string (Optional, Computed)
    name = string (Computed)
    network = string (Optional, Computed)
    network_ip = string (Optional)
    nic_type = string (Optional)
    queue_count = number (Optional)
    stack_type = string (Optional, Computed)
    subnetwork = string (Optional, Computed)
    subnetwork_project = string (Optional, Computed)

    access_config block "list" (Optional) {
      nat_ip = string (Optional, Computed)
      network_tier = string (Optional, Computed)
      public_ptr_domain_name = string (Computed)
    }

    alias_ip_range block "list" (Optional) {
      ip_cidr_range = string (Required)
      subnetwork_range_name = string (Optional)
    }

    ipv6_access_config block "list" (Optional) {
      network_tier = string (Required)
      external_ipv6 = string (Computed)
      external_ipv6_prefix_length = string (Computed)
      name = string (Computed)
      public_ptr_domain_name = string (Computed)
    }
  }

  network_performance_config block "list" (Optional) {
    total_egress_bandwidth_tier = string (Required)
  }

  reservation_affinity block "list" (Optional) {
    type = string (Required)

    specific_reservation block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  scheduling block "list" (Optional) {
    automatic_restart = bool (Optional)
    availability_domain = number (Optional)
    instance_termination_action = string (Optional)
    min_node_cpus = number (Optional)
    on_host_maintenance = string (Optional, Computed)
    preemptible = bool (Optional)
    provisioning_model = string (Optional, Computed)
    termination_time = string (Optional)

    local_ssd_recovery_timeout block "list" (Optional) {
      seconds = number (Required)
      nanos = number (Optional)
    }

    max_run_duration block "list" (Optional) {
      seconds = number (Required)
      nanos = number (Optional)
    }

    node_affinities block "set" (Optional) {
      key = string (Required)
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }

    on_instance_stop_action block "list" (Optional) {
      discard_local_ssd = bool (Optional)
    }
  }

  service_account block "list" (Optional) {
    scopes = ['set', 'string'] (Required)
    email = string (Optional, Computed)
  }

  shielded_instance_config block "list" (Optional) {
    enable_integrity_monitoring = bool (Optional)
    enable_secure_boot = bool (Optional)
    enable_vtpm = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
