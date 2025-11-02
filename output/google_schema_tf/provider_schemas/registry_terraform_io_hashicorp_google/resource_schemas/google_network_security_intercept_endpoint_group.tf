resource "google_network_security_intercept_endpoint_group" "name" {
  intercept_deployment_group = string (Required)
  intercept_endpoint_group_id = string (Required)
  location = string (Required)
  associations = ['set', ['object', {'name': 'string', 'network': 'string', 'state': 'string'}]] (Computed)
  connected_deployment_group = ['list', ['object', {'locations': ['set', ['object', {'location': 'string', 'state': 'string'}]], 'name': 'string'}]] (Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
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
