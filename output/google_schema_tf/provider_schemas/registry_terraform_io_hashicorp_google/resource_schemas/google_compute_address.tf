resource "google_compute_address" "name" {
  name = string (Required)
  address = string (Optional, Computed)
  address_type = string (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  ip_version = string (Optional)
  ipv6_endpoint_type = string (Optional)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  network = string (Optional)
  network_tier = string (Optional, Computed)
  prefix_length = number (Optional, Computed)
  project = string (Optional, Computed)
  purpose = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  subnetwork = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  users = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
