resource "google_project_service" "name" {
  service = string (Required)
  disable_dependent_services = bool (Optional)
  disable_on_destroy = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
