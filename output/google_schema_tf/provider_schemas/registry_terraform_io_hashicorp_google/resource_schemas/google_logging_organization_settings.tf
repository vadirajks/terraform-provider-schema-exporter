resource "google_logging_organization_settings" "name" {
  organization = string (Required)
  disable_default_sink = bool (Optional, Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Optional, Computed)
  kms_service_account_id = string (Computed)
  logging_service_account_id = string (Computed)
  name = string (Computed)
  storage_location = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
