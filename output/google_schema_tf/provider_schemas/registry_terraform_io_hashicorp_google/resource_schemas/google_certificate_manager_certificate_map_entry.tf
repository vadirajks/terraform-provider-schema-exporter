resource "google_certificate_manager_certificate_map_entry" "name" {
  certificates = ['list', 'string'] (Required)
  map = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  hostname = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  matcher = string (Optional)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
