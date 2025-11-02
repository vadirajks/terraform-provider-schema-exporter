resource "google_app_engine_service_network_settings" "name" {
  service = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  network_settings block "list" (Required) {
    ingress_traffic_allowed = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
