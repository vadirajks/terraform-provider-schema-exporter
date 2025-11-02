resource "google_compute_network" "name" {
  name = string (Required)
  auto_create_subnetworks = bool (Optional)
  bgp_always_compare_med = bool (Optional, Computed)
  bgp_best_path_selection_mode = string (Optional, Computed)
  bgp_inter_region_cost = string (Optional, Computed)
  delete_default_routes_on_create = bool (Optional)
  description = string (Optional)
  enable_ula_internal_ipv6 = bool (Optional)
  gateway_ipv4 = string (Computed)
  id = string (Optional, Computed)
  internal_ipv6_range = string (Optional, Computed)
  mtu = number (Optional, Computed)
  network_firewall_policy_enforcement_order = string (Optional)
  network_id = string (Computed)
  network_profile = string (Optional)
  numeric_id = string (Computed)
  project = string (Optional, Computed)
  routing_mode = string (Optional, Computed)
  self_link = string (Computed)

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
