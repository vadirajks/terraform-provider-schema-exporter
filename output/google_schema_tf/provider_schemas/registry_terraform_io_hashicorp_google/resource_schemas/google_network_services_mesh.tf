resource "google_network_services_mesh" "name" {
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  interception_port = number (Optional)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
