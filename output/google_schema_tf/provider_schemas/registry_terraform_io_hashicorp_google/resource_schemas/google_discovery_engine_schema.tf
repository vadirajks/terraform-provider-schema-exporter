resource "google_discovery_engine_schema" "name" {
  data_store_id = string (Required)
  location = string (Required)
  schema_id = string (Required)
  id = string (Optional, Computed)
  json_schema = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
