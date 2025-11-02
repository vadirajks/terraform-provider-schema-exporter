data "google_storage_project_service_account" "name" {
  email_address = string (Computed)
  id = string (Optional, Computed)
  member = string (Computed)
  project = string (Optional, Computed)
  user_project = string (Optional)
}
