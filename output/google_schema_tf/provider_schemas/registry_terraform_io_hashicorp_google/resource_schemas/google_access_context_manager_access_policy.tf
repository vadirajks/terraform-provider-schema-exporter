resource "google_access_context_manager_access_policy" "name" {
  parent = string (Required)
  title = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  scopes = ['list', 'string'] (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
