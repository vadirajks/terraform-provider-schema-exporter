resource "google_notebooks_runtime" "name" {
  location = string (Required)
  name = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  health_state = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  metrics = ['list', ['object', {'system_metrics': ['map', 'string']}]] (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  access_config block "list" (Optional) {
    access_type = string (Optional)
    proxy_uri = string (Computed)
    runtime_owner = string (Optional)
  }

  software_config block "list" (Optional) {
    custom_gpu_driver_path = string (Optional)
    enable_health_monitoring = bool (Optional)
    idle_shutdown = bool (Optional)
    idle_shutdown_timeout = number (Optional)
    install_gpu_driver = bool (Optional)
    notebook_upgrade_schedule = string (Optional)
    post_startup_script = string (Optional)
    post_startup_script_behavior = string (Optional)
    upgradeable = bool (Computed)

    kernels block "list" (Optional) {
      repository = string (Required)
      tag = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  virtual_machine block "list" (Optional) {
    instance_id = string (Computed)
    instance_name = string (Computed)

    virtual_machine_config block "list" (Optional) {
      machine_type = string (Required)
      guest_attributes = ['map', 'string'] (Computed)
      internal_ip_only = bool (Optional)
      labels = ['map', 'string'] (Optional, Computed)
      metadata = ['map', 'string'] (Optional, Computed)
      network = string (Optional)
      nic_type = string (Optional)
      reserved_ip_range = string (Optional)
      subnet = string (Optional)
      tags = ['list', 'string'] (Optional, Computed)
      zone = string (Computed)

      accelerator_config block "list" (Optional) {
        core_count = number (Optional)
        type = string (Optional)
      }

      container_images block "list" (Optional) {
        repository = string (Required)
        tag = string (Optional)
      }

      data_disk block "list" (Required) {
        auto_delete = bool (Computed)
        boot = bool (Computed)
        device_name = string (Computed)
        guest_os_features = ['list', 'string'] (Computed)
        index = number (Computed)
        interface = string (Optional)
        kind = string (Computed)
        licenses = ['list', 'string'] (Computed)
        mode = string (Optional)
        source = string (Optional)
        type = string (Optional)

        initialize_params block "list" (Optional) {
          description = string (Optional)
          disk_name = string (Optional)
          disk_size_gb = number (Optional)
          disk_type = string (Optional)
          labels = ['map', 'string'] (Optional, Computed)
        }
      }

      encryption_config block "list" (Optional) {
        kms_key = string (Optional)
      }

      shielded_instance_config block "list" (Optional) {
        enable_integrity_monitoring = bool (Optional)
        enable_secure_boot = bool (Optional)
        enable_vtpm = bool (Optional)
      }
    }
  }
}
