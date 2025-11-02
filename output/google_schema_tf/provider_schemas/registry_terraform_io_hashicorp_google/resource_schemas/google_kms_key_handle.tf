resource "google_kms_key_handle" "name" {
  location = string (Required)
  name = string (Required)
  resource_type_selector = string (Required)
  id = string (Optional, Computed)
  kms_key = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
