resource "google_apphub_service_project_attachment" "name" {
  service_project_attachment_id = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  service_project = string (Optional)
  state = string (Computed)
  uid = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
