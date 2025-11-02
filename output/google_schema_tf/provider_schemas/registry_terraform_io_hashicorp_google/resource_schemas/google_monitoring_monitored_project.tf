resource "google_monitoring_monitored_project" "name" {
  metrics_scope = string (Required)
  name = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
