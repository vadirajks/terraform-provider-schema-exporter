data "google_artifact_registry_locations" "name" {
  id = string (Optional, Computed)
  locations = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
}
