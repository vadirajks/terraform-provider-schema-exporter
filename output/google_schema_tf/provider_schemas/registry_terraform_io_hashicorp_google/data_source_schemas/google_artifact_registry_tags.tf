data "google_artifact_registry_tags" "name" {
  location = string (Required)
  package_name = string (Required)
  repository_id = string (Required)
  filter = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional)
  tags = ['list', ['object', {'name': 'string', 'version': 'string'}]] (Computed)
}
