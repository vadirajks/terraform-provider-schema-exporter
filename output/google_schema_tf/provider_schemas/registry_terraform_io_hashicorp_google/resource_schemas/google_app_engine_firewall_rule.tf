resource "google_app_engine_firewall_rule" "name" {
  action = string (Required)
  source_range = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  priority = number (Optional)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
