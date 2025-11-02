resource "google_logging_log_scope" "name" {
  name = string (Required)
  resource_names = ['list', 'string'] (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  parent = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
