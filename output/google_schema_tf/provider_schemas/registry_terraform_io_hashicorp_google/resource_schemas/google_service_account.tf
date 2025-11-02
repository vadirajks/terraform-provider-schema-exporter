resource "google_service_account" "name" {
  account_id = string (Required)
  create_ignore_already_exists = bool (Optional)
  description = string (Optional)
  disabled = bool (Optional)
  display_name = string (Optional)
  email = string (Computed)
  id = string (Optional, Computed)
  member = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  unique_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
