resource "google_scc_management_organization_event_threat_detection_custom_module" "name" {
  organization = string (Required)
  config = string (Optional)
  display_name = string (Optional)
  enablement_state = string (Optional)
  id = string (Optional, Computed)
  last_editor = string (Computed)
  location = string (Optional)
  name = string (Computed)
  type = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
