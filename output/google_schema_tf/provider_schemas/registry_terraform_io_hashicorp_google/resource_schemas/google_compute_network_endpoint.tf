resource "google_compute_network_endpoint" "name" {
  ip_address = string (Required)
  network_endpoint_group = string (Required)
  id = string (Optional, Computed)
  instance = string (Optional)
  port = number (Optional)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
