resource "google_compute_ha_vpn_gateway" "name" {
  name = string (Required)
  network = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  gateway_ip_version = string (Optional)
  id = string (Optional, Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  stack_type = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpn_interfaces block "list" (Optional) {
    id = number (Optional)
    interconnect_attachment = string (Optional)
    ip_address = string (Computed)
  }
}
