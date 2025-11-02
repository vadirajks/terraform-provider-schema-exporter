data "google_monitoring_mesh_istio_service" "name" {
  mesh_uid = string (Required)
  service_name = string (Required)
  service_namespace = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional)
  service_id = string (Computed)
  telemetry = ['list', ['object', {'resource_name': 'string'}]] (Computed)
  user_labels = ['map', 'string'] (Computed)
}
