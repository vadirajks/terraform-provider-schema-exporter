data "google_kms_autokey_config" "name" {
  folder = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  key_project = string (Computed)
}
