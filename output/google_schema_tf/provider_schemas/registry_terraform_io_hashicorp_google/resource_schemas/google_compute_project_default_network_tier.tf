resource "google_compute_project_default_network_tier" "name" {
  network_tier = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
