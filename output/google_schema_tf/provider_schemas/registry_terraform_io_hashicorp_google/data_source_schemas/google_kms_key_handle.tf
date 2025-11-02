data "google_kms_key_handle" "name" {
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  kms_key = string (Computed)
  project = string (Optional)
  resource_type_selector = string (Computed)
}
