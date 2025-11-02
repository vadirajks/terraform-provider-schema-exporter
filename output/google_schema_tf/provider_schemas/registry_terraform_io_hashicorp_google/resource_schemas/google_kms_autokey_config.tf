resource "google_kms_autokey_config" "name" {
  folder = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  key_project = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
