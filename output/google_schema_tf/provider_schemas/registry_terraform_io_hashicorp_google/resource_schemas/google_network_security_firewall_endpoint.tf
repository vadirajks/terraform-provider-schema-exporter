resource "google_network_security_firewall_endpoint" "name" {
  billing_project_id = string (Required)
  location = string (Required)
  name = string (Required)
  parent = string (Required)
  associated_networks = ['list', 'string'] (Computed)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  reconciling = bool (Computed)
  self_link = string (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
