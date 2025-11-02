data "google_project_service" "name" {
  service = string (Required)
  disable_dependent_services = bool (Computed)
  disable_on_destroy = bool (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
}
