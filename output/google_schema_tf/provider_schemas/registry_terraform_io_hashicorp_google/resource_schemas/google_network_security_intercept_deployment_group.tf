resource "google_network_security_intercept_deployment_group" "name" {
  intercept_deployment_group_id = string (Required)
  location = string (Required)
  network = string (Required)
  connected_endpoint_groups = ['list', ['object', {'name': 'string'}]] (Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  locations = ['set', ['object', {'location': 'string', 'state': 'string'}]] (Computed)
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
