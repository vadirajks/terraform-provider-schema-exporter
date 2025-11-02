data "google_compute_vpn_gateway" "name" {
  name = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  network = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
}
