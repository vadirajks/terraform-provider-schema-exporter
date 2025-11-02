resource "google_compute_external_vpn_gateway" "name" {
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  redundancy_type = string (Optional)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  interface block "list" (Optional) {
    id = number (Optional)
    ip_address = string (Optional)
    ipv6_address = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
