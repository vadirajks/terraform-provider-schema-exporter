data "google_logging_project_cmek_settings" "name" {
  project = string (Required)
  id = string (Optional, Computed)
  kms_key_name = string (Optional)
  kms_key_version_name = string (Computed)
  name = string (Computed)
  service_account_id = string (Computed)
}
