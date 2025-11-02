resource "google_monitoring_service" "name" {
  service_id = string (Required)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  telemetry = ['list', ['object', {'resource_name': 'string'}]] (Computed)
  user_labels = ['map', 'string'] (Optional)

  basic_service block "list" (Optional) {
    service_labels = ['map', 'string'] (Optional)
    service_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
