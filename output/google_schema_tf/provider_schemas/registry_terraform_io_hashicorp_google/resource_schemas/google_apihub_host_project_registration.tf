resource "google_apihub_host_project_registration" "name" {
  gcp_project = string (Required)
  host_project_registration_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
