data "google_monitoring_istio_canonical_service" "name" {
  canonical_service = string (Required)
  canonical_service_namespace = string (Required)
  mesh_uid = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional)
  service_id = string (Computed)
  telemetry = ['list', ['object', {'resource_name': 'string'}]] (Computed)
  user_labels = ['map', 'string'] (Computed)
}
