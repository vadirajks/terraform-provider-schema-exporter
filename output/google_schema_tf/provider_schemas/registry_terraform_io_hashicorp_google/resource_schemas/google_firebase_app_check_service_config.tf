resource "google_firebase_app_check_service_config" "name" {
  service_id = string (Required)
  enforcement_mode = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
