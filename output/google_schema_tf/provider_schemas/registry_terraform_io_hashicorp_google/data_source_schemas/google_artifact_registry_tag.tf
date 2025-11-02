data "google_artifact_registry_tag" "name" {
  location = string (Required)
  package_name = string (Required)
  repository_id = string (Required)
  tag_name = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional)
  version = string (Computed)
}
