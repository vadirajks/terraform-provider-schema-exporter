data "google_artifact_registry_repositories" "name" {
  location = string (Required)
  id = string (Optional, Computed)
  name_filter = string (Optional)
  project = string (Optional)
  repositories = ['list', ['object', {'create_time': 'string', 'description': 'string', 'format': 'string', 'id': 'string', 'repository_id': 'string', 'update_time': 'string'}]] (Computed)
}
