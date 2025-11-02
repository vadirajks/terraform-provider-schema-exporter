resource "google_firestore_index" "name" {
  collection = string (Required)
  api_scope = string (Optional)
  database = string (Optional)
  density = string (Optional, Computed)
  id = string (Optional, Computed)
  multikey = bool (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  query_scope = string (Optional)
  unique = bool (Optional, Computed)

  fields block "list" (Required) {
    array_config = string (Optional)
    field_path = string (Optional)
    order = string (Optional)

    vector_config block "list" (Optional) {
      dimension = number (Optional)

      flat block "list" (Optional) {
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
