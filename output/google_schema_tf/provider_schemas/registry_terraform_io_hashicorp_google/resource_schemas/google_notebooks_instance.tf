resource "google_notebooks_instance" "name" {
  location = string (Required)
  machine_type = string (Required)
  name = string (Required)
  boot_disk_size_gb = number (Optional)
  boot_disk_type = string (Optional)
  create_time = string (Optional, Computed)
  custom_gpu_driver_path = string (Optional)
  data_disk_size_gb = number (Optional)
  data_disk_type = string (Optional)
  desired_state = string (Optional)
  disk_encryption = string (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  install_gpu_driver = bool (Optional)
  instance_owners = ['list', 'string'] (Optional)
  kms_key = string (Optional)
  labels = ['map', 'string'] (Optional)
  metadata = ['map', 'string'] (Optional)
  network = string (Optional, Computed)
  nic_type = string (Optional)
  no_proxy_access = bool (Optional)
  no_public_ip = bool (Optional)
  no_remove_data_disk = bool (Optional)
  post_startup_script = string (Optional)
  project = string (Optional, Computed)
  proxy_uri = string (Computed)
  service_account = string (Optional, Computed)
  service_account_scopes = ['list', 'string'] (Optional, Computed)
  state = string (Computed)
  subnet = string (Optional, Computed)
  tags = ['list', 'string'] (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Optional, Computed)

  accelerator_config block "list" (Optional) {
    core_count = number (Required)
    type = string (Required)
  }

  container_image block "list" (Optional) {
    repository = string (Required)
    tag = string (Optional)
  }

  reservation_affinity block "list" (Optional) {
    consume_reservation_type = string (Required)
    key = string (Optional)
    values = ['list', 'string'] (Optional)
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

  vm_image block "list" (Optional) {
    project = string (Required)
    image_family = string (Optional)
    image_name = string (Optional)
  }
}
