resource "google_project_default_service_accounts" "name" {
  action = string (Required)
  project = string (Required)
  id = string (Optional, Computed)
  restore_policy = string (Optional)
  service_accounts = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
