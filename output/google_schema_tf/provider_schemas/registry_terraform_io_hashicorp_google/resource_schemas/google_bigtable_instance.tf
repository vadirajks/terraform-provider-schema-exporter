resource "google_bigtable_instance" "name" {
  name = string (Required)
  deletion_protection = bool (Optional)
  display_name = string (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  instance_type = string (Optional)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  cluster block "list" (Optional) {
    cluster_id = string (Required)
    kms_key_name = string (Optional, Computed)
    node_scaling_factor = string (Optional)
    num_nodes = number (Optional, Computed)
    state = string (Computed)
    storage_type = string (Optional)
    zone = string (Optional, Computed)

    autoscaling_config block "list" (Optional) {
      cpu_target = number (Required)
      max_nodes = number (Required)
      min_nodes = number (Required)
      storage_target = number (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
