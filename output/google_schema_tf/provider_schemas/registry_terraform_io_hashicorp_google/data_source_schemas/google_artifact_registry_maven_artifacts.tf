data "google_artifact_registry_maven_artifacts" "name" {
  location = string (Required)
  repository_id = string (Required)
  id = string (Optional, Computed)
  maven_artifacts = ['list', ['object', {'artifact_id': 'string', 'create_time': 'string', 'group_id': 'string', 'name': 'string', 'pom_uri': 'string', 'update_time': 'string', 'version': 'string'}]] (Computed)
  project = string (Optional)
}
