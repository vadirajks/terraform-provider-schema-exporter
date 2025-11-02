resource "google_compute_project_metadata" "name" {
  metadata = ['map', 'string'] (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
