resource "google_compute_router_interface" "name" {
  name = string (Required)
  router = string (Required)
  id = string (Optional, Computed)
  interconnect_attachment = string (Optional)
  ip_range = string (Optional, Computed)
  ip_version = string (Optional, Computed)
  private_ip_address = string (Optional)
  project = string (Optional, Computed)
  redundant_interface = string (Optional, Computed)
  region = string (Optional, Computed)
  subnetwork = string (Optional)
  vpn_tunnel = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
