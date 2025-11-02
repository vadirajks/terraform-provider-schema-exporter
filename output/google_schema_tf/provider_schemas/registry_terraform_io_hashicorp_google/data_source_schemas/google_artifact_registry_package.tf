data "google_artifact_registry_package" "name" {
  location = string (Required)
  name = string (Required)
  repository_id = string (Required)
  annotations = ['map', 'string'] (Computed)
  create_time = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
  update_time = string (Computed)
}
