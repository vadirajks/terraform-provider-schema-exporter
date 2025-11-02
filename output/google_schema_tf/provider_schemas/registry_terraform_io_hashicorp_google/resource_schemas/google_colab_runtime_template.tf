resource "google_colab_runtime_template" "name" {
  display_name = string (Required)
  location = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional, Computed)
  name = string (Optional, Computed)
  network_tags = ['list', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  data_persistent_disk_spec block "list" (Optional) {
    disk_size_gb = string (Optional, Computed)
    disk_type = string (Optional, Computed)
  }

  encryption_spec block "list" (Optional) {
    kms_key_name = string (Optional)
  }

  euc_config block "list" (Optional) {
    euc_disabled = bool (Optional, Computed)
  }

  idle_shutdown_config block "list" (Optional) {
    idle_timeout = string (Optional, Computed)
  }

  machine_spec block "list" (Optional) {
    accelerator_count = number (Optional, Computed)
    accelerator_type = string (Optional)
    machine_type = string (Optional, Computed)
  }

  network_spec block "list" (Optional) {
    enable_internet_access = bool (Optional)
    network = string (Optional, Computed)
    subnetwork = string (Optional)
  }

  shielded_vm_config block "list" (Optional) {
    enable_secure_boot = bool (Optional, Computed)
  }

  software_config block "list" (Optional) {

    env block "list" (Optional) {
      name = string (Optional)
      value = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
