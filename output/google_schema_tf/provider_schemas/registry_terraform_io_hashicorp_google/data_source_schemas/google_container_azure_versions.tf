data "google_container_azure_versions" "name" {
  id = string (Optional, Computed)
  location = string (Optional)
  project = string (Optional)
  supported_regions = ['list', 'string'] (Computed)
  valid_versions = ['list', 'string'] (Computed)
}
