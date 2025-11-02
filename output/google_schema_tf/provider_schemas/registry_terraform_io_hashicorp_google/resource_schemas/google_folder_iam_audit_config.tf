resource "google_folder_iam_audit_config" "name" {
  folder = string (Required)
  service = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  audit_log_config block "set" (Required) {
    log_type = string (Required)
    exempted_members = ['set', 'string'] (Optional)
  }
}
