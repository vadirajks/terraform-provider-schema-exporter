resource "google_network_security_mirroring_endpoint_group_association" "name" {
  location = string (Required)
  mirroring_endpoint_group = string (Required)
  network = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  locations = ['set', ['object', {'location': 'string', 'state': 'string'}]] (Computed)
  locations_details = ['list', ['object', {'location': 'string', 'state': 'string'}]] (Computed)
  mirroring_endpoint_group_association_id = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
