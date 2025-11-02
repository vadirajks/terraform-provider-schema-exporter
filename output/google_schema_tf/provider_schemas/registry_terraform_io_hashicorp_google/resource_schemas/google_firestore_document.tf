resource "google_firestore_document" "name" {
  collection = string (Required)
  document_id = string (Required)
  fields = string (Required)
  create_time = string (Computed)
  database = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  path = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
