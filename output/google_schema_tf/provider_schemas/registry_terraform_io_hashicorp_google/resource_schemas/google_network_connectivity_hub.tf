resource "google_network_connectivity_hub" "name" {
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  export_psc = bool (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional, Computed)
  policy_mode = string (Optional, Computed)
  preset_topology = string (Optional, Computed)
  project = string (Optional, Computed)
  routing_vpcs = ['list', ['object', {'uri': 'string'}]] (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  unique_id = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
