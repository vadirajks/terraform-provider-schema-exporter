resource "google_datastore_index" "name" {
  kind = string (Required)
  ancestor = string (Optional)
  id = string (Optional, Computed)
  index_id = string (Computed)
  project = string (Optional, Computed)

  properties block "list"  (Optional){
    direction = string (Required)
    name = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
  }
}
