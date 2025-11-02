resource "google_compute_instance" "name" {
  machine_type = string (Required)
  name = string (Required)
  allow_stopping_for_update = bool (Optional)
  can_ip_forward = bool (Optional)
  cpu_platform = string (Computed)
  creation_timestamp = string (Computed)
  current_status = string (Computed)
  deletion_protection = bool (Optional)
  description = string (Optional)
  desired_status = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enable_display = bool (Optional)
  hostname = string (Optional)
  id = string (Optional, Computed)
  instance_id = string (Computed)
  key_revocation_action_type = string (Optional)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  metadata = ['map', 'string'] (Optional)
  metadata_fingerprint = string (Computed)
  metadata_startup_script = string (Optional)
  min_cpu_platform = string (Optional, Computed)
  project = string (Optional, Computed)
  resource_policies = ['list', 'string'] (Optional)
  self_link = string (Computed)
  tags = ['set', 'string'] (Optional)
  tags_fingerprint = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  zone = string (Optional, Computed)

  advanced_machine_features block "list" (Optional) {
    enable_nested_virtualization = bool (Optional)
    enable_uefi_networking = bool (Optional)
    performance_monitoring_unit = string (Optional)
    threads_per_core = number (Optional)
    turbo_mode = string (Optional)
    visible_core_count = number (Optional)
  }

  attached_disk block "list" (Optional) {
    source = string (Required)
    device_name = string (Optional, Computed)
    disk_encryption_key_raw = string (Optional)
    disk_encryption_key_rsa = string (Optional)
    disk_encryption_key_sha256 = string (Computed)
    disk_encryption_service_account = string (Optional)
    force_attach = bool (Optional)
    kms_key_self_link = string (Optional, Computed)
    mode = string (Optional)
  }

  boot_disk block "list" (Required) {
    auto_delete = bool (Optional)
    device_name = string (Optional, Computed)
    disk_encryption_key_raw = string (Optional)
    disk_encryption_key_rsa = string (Optional)
    disk_encryption_key_sha256 = string (Computed)
    disk_encryption_service_account = string (Optional)
    force_attach = bool (Optional)
    guest_os_features = ['list', 'string'] (Optional, Computed)
    interface = string (Optional)
    kms_key_self_link = string (Optional, Computed)
    mode = string (Optional)
    source = string (Optional, Computed)

    initialize_params block "list" (Optional) {
      architecture = string (Optional, Computed)
      enable_confidential_compute = bool (Optional)
      image = string (Optional, Computed)
      labels = ['map', 'string'] (Optional, Computed)
      provisioned_iops = number (Optional, Computed)
      provisioned_throughput = number (Optional, Computed)
      resource_manager_tags = ['map', 'string'] (Optional)
      resource_policies = ['list', 'string'] (Optional, Computed)
      size = number (Optional, Computed)
      snapshot = string (Optional, Computed)
      storage_pool = string (Optional)
      type = string (Optional, Computed)

      source_image_encryption_key block "list" (Optional) {
        kms_key_self_link = string (Optional, Computed)
        kms_key_service_account = string (Optional)
        raw_key = string (Optional)
        rsa_encrypted_key = string (Optional)
        sha256 = string (Computed)
      }

      source_snapshot_encryption_key block "list" (Optional) {
        kms_key_self_link = string (Optional, Computed)
        kms_key_service_account = string (Optional)
        raw_key = string (Optional)
        rsa_encrypted_key = string (Optional)
        sha256 = string (Computed)
      }
    }
  }

  confidential_instance_config block "list" (Optional) {
    confidential_instance_type = string (Optional)
    enable_confidential_compute = bool (Optional)
  }

  guest_accelerator block "list" (Optional) {
    count = number (Required)
    type = string (Required)
  }

  instance_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional, Computed)
    kms_key_service_account = string (Optional)
    sha256 = string (Computed)
  }

  network_interface block "list" (Required) {
    internal_ipv6_prefix_length = number (Optional, Computed)
    ipv6_access_type = string (Computed)
    ipv6_address = string (Optional, Computed)
    name = string (Computed)
    network = string (Optional, Computed)
    network_attachment = string (Optional, Computed)
    network_ip = string (Optional, Computed)
    nic_type = string (Optional)
    queue_count = number (Optional)
    stack_type = string (Optional, Computed)
    subnetwork = string (Optional, Computed)
    subnetwork_project = string (Optional, Computed)

    access_config block "list" (Optional) {
      nat_ip = string (Optional, Computed)
      network_tier = string (Optional, Computed)
      public_ptr_domain_name = string (Optional)
    }

    alias_ip_range block "list" (Optional) {
      ip_cidr_range = string (Required)
      subnetwork_range_name = string (Optional)
    }

    ipv6_access_config block "list" (Optional) {
      network_tier = string (Required)
      external_ipv6 = string (Optional, Computed)
      external_ipv6_prefix_length = string (Optional, Computed)
      name = string (Optional, Computed)
      public_ptr_domain_name = string (Optional)
    }
  }

  network_performance_config block "list" (Optional) {
    total_egress_bandwidth_tier = string (Required)
  }

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
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

  scratch_disk block "list" (Optional) {
    interface = string (Required)
    device_name = string (Optional, Computed)
    size = number (Optional)
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
    update = string (Optional)
  }
}
