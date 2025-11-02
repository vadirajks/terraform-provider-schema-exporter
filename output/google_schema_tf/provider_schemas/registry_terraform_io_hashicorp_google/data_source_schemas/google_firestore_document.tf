data "google_firestore_document" "name" {
  collection = string (Required)
  database = string (Required)
  document_id = string (Required)
  create_time = string (Computed)
  fields = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  path = string (Computed)
  project = string (Optional)
  update_time = string (Computed)
}
