data "google_compute_network_peering" "name" {
  name = string (Required)
  network = string (Required)
  export_custom_routes = bool (Computed)
  export_subnet_routes_with_public_ip = bool (Computed)
  id = string (Optional, Computed)
  import_custom_routes = bool (Computed)
  import_subnet_routes_with_public_ip = bool (Computed)
  peer_network = string (Computed)
  stack_type = string (Computed)
  state = string (Computed)
  state_details = string (Computed)
  update_strategy = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
