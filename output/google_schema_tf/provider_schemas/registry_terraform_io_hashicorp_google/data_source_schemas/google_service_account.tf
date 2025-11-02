data "google_service_account" "name" {
  account_id = string (Required)
  disabled = bool (Computed)
  display_name = string (Computed)
  email = string (Computed)
  id = string (Optional, Computed)
  member = string (Computed)
  name = string (Computed)
  project = string (Optional)
  unique_id = string (Computed)
}
