resource "google_firebaserules_release" "name" {
  name = string (Required)
  ruleset_name = string (Required)
  create_time = string (Computed)
  disabled = bool (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
