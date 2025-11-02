resource "google_document_ai_processor" "name" {
  display_name = string (Required)
  location = string (Required)
  type = string (Required)
  id = string (Optional, Computed)
  kms_key_name = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
