data "google_monitoring_app_engine_service" "name" {
  module_id = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional)
  service_id = string (Computed)
  telemetry = ['list', ['object', {'resource_name': 'string'}]] (Computed)
  user_labels = ['map', 'string'] (Computed)
}
