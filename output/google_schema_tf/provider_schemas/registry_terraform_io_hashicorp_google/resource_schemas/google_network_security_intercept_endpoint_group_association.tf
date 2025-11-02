resource "google_network_security_intercept_endpoint_group_association" "name" {
  intercept_endpoint_group = string (Required)
  location = string (Required)
  network = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  intercept_endpoint_group_association_id = string (Optional)
  labels = ['map', 'string'] (Optional)
  locations = ['set', ['object', {'location': 'string', 'state': 'string'}]] (Computed)
  locations_details = ['list', ['object', {'location': 'string', 'state': 'string'}]] (Computed)
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
