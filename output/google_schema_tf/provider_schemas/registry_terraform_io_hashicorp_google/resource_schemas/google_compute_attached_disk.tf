resource "google_compute_attached_disk" "name" {
  disk = string (Required)
  instance = string (Required)
  device_name = string (Optional, Computed)
  id = string (Optional, Computed)
  interface = string (Optional)
  mode = string (Optional)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
