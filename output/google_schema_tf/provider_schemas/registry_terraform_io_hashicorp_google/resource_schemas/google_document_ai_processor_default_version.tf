resource "google_document_ai_processor_default_version" "name" {
  processor = string (Required)
  version = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
