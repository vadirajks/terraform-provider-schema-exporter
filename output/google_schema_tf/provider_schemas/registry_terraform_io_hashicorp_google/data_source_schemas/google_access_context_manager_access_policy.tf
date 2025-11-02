data "google_access_context_manager_access_policy" "name" {
  parent = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  scopes = ['list', 'string'] (Optional)
  title = string (Computed)
}
