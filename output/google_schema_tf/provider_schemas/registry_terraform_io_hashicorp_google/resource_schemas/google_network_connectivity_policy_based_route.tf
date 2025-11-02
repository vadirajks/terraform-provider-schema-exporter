resource "google_network_connectivity_policy_based_route" "name" {
  name = string (Required)
  network = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  kind = string (Computed)
  labels = ['map', 'string'] (Optional)
  next_hop_ilb_ip = string (Optional)
  next_hop_other_routes = string (Optional)
  priority = number (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  warnings = ['list', ['object', {'code': 'string', 'data': ['map', 'string'], 'warning_message': 'string'}]] (Computed)

  filter block "list" (Required) {
    protocol_version = string (Required)
    dest_range = string (Optional)
    ip_protocol = string (Optional)
    src_range = string (Optional)
  }

  interconnect_attachment block "list" (Optional) {
    region = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  virtual_machine block "list" (Optional) {
    tags = ['list', 'string'] (Required)
  }
}
