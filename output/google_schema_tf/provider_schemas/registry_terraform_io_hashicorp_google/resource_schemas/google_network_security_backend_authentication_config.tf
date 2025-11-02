resource "google_network_security_backend_authentication_config" "name" {
  name = string (Required)
  client_certificate = string (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  trust_config = string (Optional)
  update_time = string (Computed)
  well_known_roots = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
