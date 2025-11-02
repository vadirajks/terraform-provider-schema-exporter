resource "google_secure_source_manager_hook" "name" {
  hook_id = string (Required)
  location = string (Required)
  repository_id = string (Required)
  target_uri = string (Required)
  create_time = string (Computed)
  disabled = bool (Optional)
  events = ['list', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  sensitive_query_string = string (Optional)
  uid = string (Computed)
  update_time = string (Computed)

  push_option block "list" (Optional) {
    branch_filter = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
