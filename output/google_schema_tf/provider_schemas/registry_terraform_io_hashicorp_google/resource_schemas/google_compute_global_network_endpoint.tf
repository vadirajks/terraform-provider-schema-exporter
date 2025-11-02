resource "google_compute_global_network_endpoint" "name" {
  global_network_endpoint_group = string (Required)
  port = number (Required)
  fqdn = string (Optional)
  id = string (Optional, Computed)
  ip_address = string (Optional)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
