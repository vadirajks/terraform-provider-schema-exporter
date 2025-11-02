resource "google_network_management_vpc_flow_logs_config" "name" {
  location = string (Required)
  vpc_flow_logs_config_id = string (Required)
  aggregation_interval = string (Optional, Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  filter_expr = string (Optional)
  flow_sampling = number (Optional, Computed)
  id = string (Optional, Computed)
  interconnect_attachment = string (Optional)
  labels = ['map', 'string'] (Optional)
  metadata = string (Optional, Computed)
  metadata_fields = ['list', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Optional, Computed)
  target_resource_state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  vpn_tunnel = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
