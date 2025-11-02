resource "google_edgecontainer_node_pool" "name" {
  cluster = string (Required)
  location = string (Required)
  name = string (Required)
  node_count = number (Required)
  node_location = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  machine_filter = string (Optional, Computed)
  node_version = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  local_disk_encryption block "list" (Optional) {
    kms_key = string (Optional)
    kms_key_active_version = string (Computed)
    kms_key_state = string (Computed)
  }

  node_config block "list" (Optional) {
    labels = ['map', 'string'] (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
