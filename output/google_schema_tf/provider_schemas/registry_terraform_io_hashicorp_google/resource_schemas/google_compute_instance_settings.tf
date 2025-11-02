resource "google_compute_instance_settings" "name" {
  zone = string (Required)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  metadata block "list" (Optional) {
    items = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
