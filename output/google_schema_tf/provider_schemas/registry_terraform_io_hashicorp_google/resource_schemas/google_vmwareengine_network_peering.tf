resource "google_vmwareengine_network_peering" "name" {
  name = string (Required)
  peer_network = string (Required)
  peer_network_type = string (Required)
  vmware_engine_network = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  export_custom_routes = bool (Optional)
  export_custom_routes_with_public_ip = bool (Optional)
  id = string (Optional, Computed)
  import_custom_routes = bool (Optional)
  import_custom_routes_with_public_ip = bool (Optional)
  project = string (Optional, Computed)
  state = string (Computed)
  state_details = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  vmware_engine_network_canonical = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
