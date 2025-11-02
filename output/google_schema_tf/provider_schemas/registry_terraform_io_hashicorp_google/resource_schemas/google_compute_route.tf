resource "google_compute_route" "name" {
  dest_range = string (Required)
  name = string (Required)
  network = string (Required)
  as_paths = ['list', ['object', {'as_lists': ['list', 'number'], 'path_segment_type': 'string'}]] (Computed)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  next_hop_gateway = string (Optional)
  next_hop_hub = string (Computed)
  next_hop_ilb = string (Optional)
  next_hop_instance = string (Optional)
  next_hop_instance_zone = string (Optional, Computed)
  next_hop_inter_region_cost = string (Computed)
  next_hop_ip = string (Optional, Computed)
  next_hop_med = string (Computed)
  next_hop_network = string (Computed)
  next_hop_origin = string (Computed)
  next_hop_peering = string (Computed)
  next_hop_vpn_tunnel = string (Optional)
  priority = number (Optional)
  project = string (Optional, Computed)
  route_status = string (Computed)
  route_type = string (Computed)
  self_link = string (Computed)
  tags = ['set', 'string'] (Optional)
  warnings = ['list', ['object', {'code': 'string', 'data': ['list', ['object', {'key': 'string', 'value': 'string'}]], 'message': 'string'}]] (Computed)

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
