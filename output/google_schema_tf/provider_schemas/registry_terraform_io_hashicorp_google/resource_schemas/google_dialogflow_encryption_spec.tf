resource "google_dialogflow_encryption_spec" "name" {
  location = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  encryption_spec block "list" (Required) {
    kms_key = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
