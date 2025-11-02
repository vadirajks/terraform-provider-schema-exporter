data "google_artifact_registry_python_package" "name" {
  location = string (Required)
  package_name = string (Required)
  repository_id = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional)
  update_time = string (Computed)
  version = string (Computed)
}
