resource "google_network_security_firewall_endpoint_association" "name" {
  firewall_endpoint = string (Required)
  location = string (Required)
  name = string (Required)
  network = string (Required)
  create_time = string (Computed)
  disabled = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  parent = string (Optional)
  reconciling = bool (Computed)
  self_link = string (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  tls_inspection_policy = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
