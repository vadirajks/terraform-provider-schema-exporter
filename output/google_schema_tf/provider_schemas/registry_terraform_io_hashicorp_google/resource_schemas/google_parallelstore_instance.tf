resource "google_parallelstore_instance" "name" {
  capacity_gib = string (Required)
  instance_id = string (Required)
  location = string (Required)
  access_points = ['list', 'string'] (Computed)
  create_time = string (Computed)
  daos_version = string (Computed)
  deployment_type = string (Optional)
  description = string (Optional)
  directory_stripe_level = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  effective_reserved_ip_range = string (Computed)
  file_stripe_level = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  network = string (Optional)
  project = string (Optional, Computed)
  reserved_ip_range = string (Optional)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
