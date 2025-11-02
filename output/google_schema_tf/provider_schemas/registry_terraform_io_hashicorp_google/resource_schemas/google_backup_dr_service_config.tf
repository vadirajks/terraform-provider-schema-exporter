resource "google_backup_dr_service_config" "name" {
  location = string (Required)
  resource_type = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
