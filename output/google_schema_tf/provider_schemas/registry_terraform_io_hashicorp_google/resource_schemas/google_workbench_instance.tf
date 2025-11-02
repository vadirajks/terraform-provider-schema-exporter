resource "google_workbench_instance" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  creator = string (Computed)
  desired_state = string (Optional)
  disable_proxy_access = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enable_managed_euc = bool (Optional)
  enable_third_party_identity = bool (Optional)
  health_info = ['list', ['object', {}]] (Computed)
  health_state = string (Computed)
  id = string (Optional, Computed)
  instance_id = string (Optional)
  instance_owners = ['list', 'string'] (Optional)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  proxy_uri = string (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  upgrade_history = ['list', ['object', {'action': 'string', 'container_image': 'string', 'create_time': 'string', 'framework': 'string', 'snapshot': 'string', 'state': 'string', 'target_version': 'string', 'version': 'string', 'vm_image': 'string'}]] (Computed)

  gce_setup block "list" (Optional) {
    disable_public_ip = bool (Optional, Computed)
    enable_ip_forwarding = bool (Optional)
    machine_type = string (Optional, Computed)
    metadata = ['map', 'string'] (Optional, Computed)
    tags = ['list', 'string'] (Optional, Computed)

    accelerator_configs block "list" (Optional) {
      core_count = string (Optional)
      type = string (Optional)
    }

    boot_disk block "list" (Optional) {
      disk_encryption = string (Optional, Computed)
      disk_size_gb = string (Optional, Computed)
      disk_type = string (Optional, Computed)
      kms_key = string (Optional)
    }

    confidential_instance_config block "list" (Optional) {
      confidential_instance_type = string (Optional)
    }

    container_image block "list" (Optional) {
      repository = string (Required)
      tag = string (Optional)
    }

    data_disks block "list" (Optional) {
      disk_encryption = string (Optional, Computed)
      disk_size_gb = string (Optional, Computed)
      disk_type = string (Optional)
      kms_key = string (Optional)
    }

    network_interfaces block "list" (Optional) {
      network = string (Optional, Computed)
      nic_type = string (Optional)
      subnet = string (Optional, Computed)

      access_configs block "list" (Optional) {
        external_ip = string (Required)
      }
    }

    reservation_affinity block "list" (Optional) {
      consume_reservation_type = string (Optional, Computed)
      key = string (Optional)
      values = ['list', 'string'] (Optional)
    }

    service_accounts block "list" (Optional) {
      email = string (Optional, Computed)
      scopes = ['list', 'string'] (Computed)
    }

    shielded_instance_config block "list" (Optional) {
      enable_integrity_monitoring = bool (Optional)
      enable_secure_boot = bool (Optional)
      enable_vtpm = bool (Optional)
    }

    vm_image block "list" (Optional) {
      family = string (Optional)
      name = string (Optional)
      project = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
