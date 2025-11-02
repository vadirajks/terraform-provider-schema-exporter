data "google_storage_transfer_project_service_account" "name" {
  email = string (Computed)
  id = string (Optional, Computed)
  member = string (Computed)
  project = string (Optional, Computed)
  subject_id = string (Computed)
}
