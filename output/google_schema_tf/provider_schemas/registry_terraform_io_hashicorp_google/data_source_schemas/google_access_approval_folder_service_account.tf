data "google_access_approval_folder_service_account" "name" {
  folder_id = string (Required)
  account_email = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
}
