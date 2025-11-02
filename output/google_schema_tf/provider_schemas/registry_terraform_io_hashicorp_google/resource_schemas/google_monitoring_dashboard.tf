resource "google_monitoring_dashboard" "name" {
  dashboard_json = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
