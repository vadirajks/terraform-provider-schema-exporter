data "google_cloud_run_locations" "name" {
  id = string (Optional, Computed)
  locations = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
}
