resource "google_logging_project_bucket_config" "name" {
  bucket_id = string (Required)
  location = string (Required)
  project = string (Required)
  description = string (Optional, Computed)
  enable_analytics = bool (Optional)
  id = string (Optional, Computed)
  lifecycle_state = string (Computed)
  locked = bool (Optional)
  name = string (Computed)
  retention_days = number (Optional)

  cmek_settings block "list" (Optional) {
    kms_key_name = string (Required)
    kms_key_version_name = string (Computed)
    name = string (Computed)
    service_account_id = string (Computed)
  }

  index_configs block "set" (Optional) {
    field_path = string (Required)
    type = string (Required)
  }
}
