resource "google_compute_instance_from_template" "name" {
  name = string (Required)
  source_instance_template = string (Required)
  allow_stopping_for_update = bool (Optional, Computed)
  can_ip_forward = bool (Optional, Computed)
  cpu_platform = string (Computed)
  creation_timestamp = string (Computed)
  current_status = string (Computed)
  deletion_protection = bool (Optional, Computed)
  description = string (Optional, Computed)
  desired_status = string (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  enable_display = bool (Optional, Computed)
  hostname = string (Optional, Computed)
  id = string (Optional, Computed)
  instance_id = string (Computed)
  key_revocation_action_type = string (Optional, Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional, Computed)
  machine_type = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional, Computed)
  metadata_fingerprint = string (Computed)
  metadata_startup_script = string (Optional, Computed)
  min_cpu_platform = string (Optional, Computed)
  project = string (Optional, Computed)
  resource_policies = ['list', 'string'] (Optional, Computed)
  self_link = string (Computed)
  tags = ['set', 'string'] (Optional, Computed)
  tags_fingerprint = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  zone = string (Optional, Computed)

  advanced_machine_features block "list" (Optional) {
    enable_nested_virtualization = bool (Optional, Computed)
    enable_uefi_networking = bool (Optional, Computed)
    performance_monitoring_unit = string (Optional, Computed)
    threads_per_core = number (Optional, Computed)
    turbo_mode = string (Optional, Computed)
    visible_core_count = number (Optional, Computed)
  }

  attached_disk block "list" (Optional) {
    source = string (Required)
    device_name = string (Optional, Computed)
    disk_encryption_key_raw = string (Optional, Computed)
    disk_encryption_key_rsa = string (Optional, Computed)
    disk_encryption_key_sha256 = string (Computed)
    disk_encryption_service_account = string (Optional, Computed)
    force_attach = bool (Optional, Computed)
    kms_key_self_link = string (Optional, Computed)
    mode = string (Optional, Computed)
  }

  boot_disk block "list" (Optional) {
    auto_delete = bool (Optional, Computed)
    device_name = string (Optional, Computed)
    disk_encryption_key_raw = string (Optional, Computed)
    disk_encryption_key_rsa = string (Optional, Computed)
    disk_encryption_key_sha256 = string (Computed)
    disk_encryption_service_account = string (Optional, Computed)
    force_attach = bool (Optional, Computed)
    guest_os_features = ['list', 'string'] (Optional, Computed)
    interface = string (Optional, Computed)
    kms_key_self_link = string (Optional, Computed)
    mode = string (Optional, Computed)
    source = string (Optional, Computed)

    initialize_params block "list" (Optional) {
      architecture = string (Optional, Computed)
      enable_confidential_compute = bool (Optional, Computed)
      image = string (Optional, Computed)
      labels = ['map', 'string'] (Optional, Computed)
      provisioned_iops = number (Optional, Computed)
      provisioned_throughput = number (Optional, Computed)
      resource_manager_tags = ['map', 'string'] (Optional, Computed)
      resource_policies = ['list', 'string'] (Optional, Computed)
      size = number (Optional, Computed)
      snapshot = string (Optional, Computed)
      storage_pool = string (Optional, Computed)
      type = string (Optional, Computed)

      source_image_encryption_key block "list" (Optional) {
        kms_key_self_link = string (Optional, Computed)
        kms_key_service_account = string (Optional, Computed)
        raw_key = string (Optional, Computed)
        rsa_encrypted_key = string (Optional, Computed)
        sha256 = string (Computed)
      }

      source_snapshot_encryption_key block "list" (Optional) {
        kms_key_self_link = string (Optional, Computed)
        kms_key_service_account = string (Optional, Computed)
        raw_key = string (Optional, Computed)
        rsa_encrypted_key = string (Optional, Computed)
        sha256 = string (Computed)
      }
    }
  }

  confidential_instance_config block "list" (Optional) {
    confidential_instance_type = string (Optional, Computed)
    enable_confidential_compute = bool (Optional, Computed)
  }

  guest_accelerator block "list" (Optional) {
    count = number (Required)
    type = string (Required)
  }

  instance_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional, Computed)
    kms_key_service_account = string (Optional, Computed)
    sha256 = string (Computed)
  }

  network_interface block "list" (Optional) {
    internal_ipv6_prefix_length = number (Optional, Computed)
    ipv6_access_type = string (Computed)
    ipv6_address = string (Optional, Computed)
    name = string (Computed)
    network = string (Optional, Computed)
    network_attachment = string (Optional, Computed)
    network_ip = string (Optional, Computed)
    nic_type = string (Optional, Computed)
    queue_count = number (Optional, Computed)
    stack_type = string (Optional, Computed)
    subnetwork = string (Optional, Computed)
    subnetwork_project = string (Optional, Computed)

    access_config block "list" (Optional) {
      nat_ip = string (Optional, Computed)
      network_tier = string (Optional, Computed)
      public_ptr_domain_name = string (Optional, Computed)
    }

    alias_ip_range block "list" (Optional) {
      ip_cidr_range = string (Required)
      subnetwork_range_name = string (Optional, Computed)
    }

    ipv6_access_config block "list" (Optional) {
      network_tier = string (Required)
      external_ipv6 = string (Optional, Computed)
      external_ipv6_prefix_length = string (Optional, Computed)
      name = string (Optional, Computed)
      public_ptr_domain_name = string (Optional, Computed)
    }
  }

  network_performance_config block "list" (Optional) {
    total_egress_bandwidth_tier = string (Required)
  }

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional, Computed)
  }

  reservation_affinity block "list" (Optional) {
    type = string (Required)

    specific_reservation block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  scheduling block "list" (Optional) {
    automatic_restart = bool (Optional, Computed)
    availability_domain = number (Optional, Computed)
    instance_termination_action = string (Optional, Computed)
    min_node_cpus = number (Optional, Computed)
    on_host_maintenance = string (Optional, Computed)
    preemptible = bool (Optional, Computed)
    provisioning_model = string (Optional, Computed)
    termination_time = string (Optional, Computed)

    local_ssd_recovery_timeout block "list" (Optional) {
      seconds = number (Required)
      nanos = number (Optional, Computed)
    }

    max_run_duration block "list" (Optional) {
      seconds = number (Required)
      nanos = number (Optional, Computed)
    }

    node_affinities block "set" (Optional) {
      key = string (Required)
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }

    on_instance_stop_action block "list" (Optional) {
      discard_local_ssd = bool (Optional, Computed)
    }
  }

  scratch_disk block "list" (Optional) {
    interface = string (Required)
    device_name = string (Optional, Computed)
    size = number (Optional, Computed)
  }

  service_account block "list" (Optional) {
    scopes = ['set', 'string'] (Required)
    email = string (Optional, Computed)
  }

  shielded_instance_config block "list" (Optional) {
    enable_integrity_monitoring = bool (Optional, Computed)
    enable_secure_boot = bool (Optional, Computed)
    enable_vtpm = bool (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
