resource "google_compute_global_address" "name" {
  name = string (Required)
  address = string (Optional, Computed)
  address_type = string (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  ip_version = string (Optional)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  network = string (Optional)
  prefix_length = number (Optional, Computed)
  project = string (Optional, Computed)
  purpose = string (Optional)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
