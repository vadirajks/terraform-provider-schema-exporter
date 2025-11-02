data "google_container_registry_repository" "name" {
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional)
  repository_url = string (Computed)
}
