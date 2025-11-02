resource "google_compute_instant_snapshot" "name" {
  name = string (Required)
  source_disk = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  disk_size_gb = number (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  source_disk_id = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  zone = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
