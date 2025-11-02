resource "google_compute_network_peering_routes_config" "name" {
  export_custom_routes = bool (Required)
  import_custom_routes = bool (Required)
  network = string (Required)
  peering = string (Required)
  export_subnet_routes_with_public_ip = bool (Optional, Computed)
  id = string (Optional, Computed)
  import_subnet_routes_with_public_ip = bool (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
