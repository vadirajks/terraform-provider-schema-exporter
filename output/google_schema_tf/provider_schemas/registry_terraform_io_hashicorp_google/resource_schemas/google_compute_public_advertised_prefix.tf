resource "google_compute_public_advertised_prefix" "name" {
  dns_verification_ip = string (Required)
  ip_cidr_range = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  pdp_scope = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  shared_secret = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
