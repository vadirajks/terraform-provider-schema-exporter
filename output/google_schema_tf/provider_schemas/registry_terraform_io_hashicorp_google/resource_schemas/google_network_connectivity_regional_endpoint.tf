resource "google_network_connectivity_regional_endpoint" "name" {
  access_type = string (Required)
  location = string (Required)
  name = string (Required)
  target_google_api = string (Required)
  address = string (Optional, Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  network = string (Optional, Computed)
  project = string (Optional, Computed)
  psc_forwarding_rule = string (Computed)
  subnetwork = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
