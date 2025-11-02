resource "google_firestore_field" "name" {
  collection = string (Required)
  field = string (Required)
  database = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  index_config block "list" (Optional) {

    indexes block "set" (Optional) {
      array_config = string (Optional)
      order = string (Optional)
      query_scope = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  ttl_config block "list" (Optional) {
    state = string (Computed)
  }
}
