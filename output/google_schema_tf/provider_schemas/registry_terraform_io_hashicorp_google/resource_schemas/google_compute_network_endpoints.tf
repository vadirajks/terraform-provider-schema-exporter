resource "google_compute_network_endpoints" "name" {
  network_endpoint_group = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)

  network_endpoints block "set" (Optional) {
    ip_address = string (Required)
    instance = string (Optional)
    port = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
