resource "google_compute_region_network_endpoint" "name" {
  port = number (Required)
  region_network_endpoint_group = string (Required)
  fqdn = string (Optional)
  id = string (Optional, Computed)
  ip_address = string (Optional)
  network_endpoint_id = number (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
