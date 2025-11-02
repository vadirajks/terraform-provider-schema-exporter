data "google_artifact_registry_maven_artifact" "name" {
  artifact_id = string (Required)
  group_id = string (Required)
  location = string (Required)
  repository_id = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  pom_uri = string (Computed)
  project = string (Optional)
  update_time = string (Computed)
  version = string (Computed)
}
