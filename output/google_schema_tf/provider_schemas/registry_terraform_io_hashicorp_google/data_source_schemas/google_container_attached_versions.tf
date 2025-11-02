data "google_container_attached_versions" "name" {
  location = string (Required)
  project = string (Required)
  id = string (Optional, Computed)
  valid_versions = ['list', 'string'] (Computed)
}
