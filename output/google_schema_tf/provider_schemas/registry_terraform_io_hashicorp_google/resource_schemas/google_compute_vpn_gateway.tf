resource "google_compute_vpn_gateway" "name" {
  name = string (Required)
  network = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  gateway_id = number (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
