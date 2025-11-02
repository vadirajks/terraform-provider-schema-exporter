data "google_compute_network_endpoint_group" "name" {
  default_port = number (Computed)
  description = string (Computed)
  generated_id = number (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  network = string (Computed)
  network_endpoint_type = string (Computed)
  project = string (Optional)
  self_link = string (Optional)
  size = number (Computed)
  subnetwork = string (Computed)
  zone = string (Optional)
}
