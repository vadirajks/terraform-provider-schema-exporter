resource "google_healthcare_dataset" "name" {
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)
  time_zone = string (Optional, Computed)

  encryption_spec block "list" (Optional) {
    kms_key_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
