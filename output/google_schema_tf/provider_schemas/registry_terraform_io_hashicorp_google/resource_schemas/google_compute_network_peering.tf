resource "google_compute_network_peering" "name" {
  name = string (Required)
  network = string (Required)
  peer_network = string (Required)
  export_custom_routes = bool (Optional)
  export_subnet_routes_with_public_ip = bool (Optional)
  id = string (Optional, Computed)
  import_custom_routes = bool (Optional)
  import_subnet_routes_with_public_ip = bool (Optional)
  stack_type = string (Optional)
  state = string (Computed)
  state_details = string (Computed)
  update_strategy = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
