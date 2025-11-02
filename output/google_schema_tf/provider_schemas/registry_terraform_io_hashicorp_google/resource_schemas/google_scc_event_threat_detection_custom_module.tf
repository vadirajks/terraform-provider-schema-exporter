resource "google_scc_event_threat_detection_custom_module" "name" {
  config = string (Required)
  enablement_state = string (Required)
  organization = string (Required)
  type = string (Required)
  display_name = string (Optional)
  id = string (Optional, Computed)
  last_editor = string (Computed)
  name = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
