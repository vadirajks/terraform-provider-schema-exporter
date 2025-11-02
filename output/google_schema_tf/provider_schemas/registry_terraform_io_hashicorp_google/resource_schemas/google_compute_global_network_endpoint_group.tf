resource "google_compute_global_network_endpoint_group" "name" {
  name = string (Required)
  network_endpoint_type = string (Required)
  default_port = number (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
