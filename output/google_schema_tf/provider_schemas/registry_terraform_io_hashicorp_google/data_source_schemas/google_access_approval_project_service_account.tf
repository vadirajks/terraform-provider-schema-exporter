data "google_access_approval_project_service_account" "name" {
  project_id = string (Required)
  account_email = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
}
