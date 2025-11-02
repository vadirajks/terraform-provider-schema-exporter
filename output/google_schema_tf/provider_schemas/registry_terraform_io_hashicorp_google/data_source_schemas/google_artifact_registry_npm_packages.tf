data "google_artifact_registry_npm_packages" "name" {
  location = string (Required)
  repository_id = string (Required)
  id = string (Optional, Computed)
  npm_packages = ['list', ['object', {'create_time': 'string', 'name': 'string', 'package_name': 'string', 'tags': ['list', 'string'], 'update_time': 'string', 'version': 'string'}]] (Computed)
  project = string (Optional)
}
