data "google_logging_project_settings" "name" {
  project = string (Required)
  disable_default_sink = bool (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Computed)
  kms_service_account_id = string (Computed)
  logging_service_account_id = string (Computed)
  name = string (Computed)
  storage_location = string (Computed)
}
