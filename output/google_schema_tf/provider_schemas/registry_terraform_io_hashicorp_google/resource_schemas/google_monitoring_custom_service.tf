resource "google_monitoring_custom_service" "name" {
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  service_id = string (Optional, Computed)
  user_labels = ['map', 'string'] (Optional)

  telemetry block "list" (Optional) {
    resource_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
