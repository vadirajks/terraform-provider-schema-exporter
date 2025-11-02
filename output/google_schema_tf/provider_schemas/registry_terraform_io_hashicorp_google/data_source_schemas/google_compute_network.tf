data "google_compute_network" "name" {
  name = string (Required)
  description = string (Computed)
  gateway_ipv4 = string (Computed)
  id = string (Optional, Computed)
  internal_ipv6_range = string (Computed)
  network_id = number (Computed)
  network_profile = string (Optional)
  numeric_id = string (Computed)
  project = string (Optional)
  self_link = string (Computed)
  subnetworks_self_links = ['list', 'string'] (Computed)
}
