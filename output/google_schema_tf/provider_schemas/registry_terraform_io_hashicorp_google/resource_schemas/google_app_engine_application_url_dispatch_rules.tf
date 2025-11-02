resource "google_app_engine_application_url_dispatch_rules" "name" {
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  dispatch_rules block "list" (Required) {
    path = string (Required)
    service = string (Required)
    domain = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
