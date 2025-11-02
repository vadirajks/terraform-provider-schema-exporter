resource "google_compute_network_endpoint_group" "name" {
  name = string (Required)
  network = string (Required)
  default_port = number (Optional)
  description = string (Optional)
  generated_id = number (Computed)
  id = string (Optional, Computed)
  network_endpoint_type = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  size = number (Computed)
  subnetwork = string (Optional)
  zone = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
