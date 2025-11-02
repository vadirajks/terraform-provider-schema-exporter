data "google_kms_key_ring" "name" {
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional)
}
