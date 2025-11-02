data "google_artifact_registry_packages" "name" {
  location = string (Required)
  repository_id = string (Required)
  filter = string (Optional)
  id = string (Optional, Computed)
  packages = ['list', ['object', {'annotations': ['map', 'string'], 'create_time': 'string', 'display_name': 'string', 'name': 'string', 'update_time': 'string'}]] (Computed)
  project = string (Optional)
}
