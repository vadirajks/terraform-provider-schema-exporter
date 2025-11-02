resource "google_bigtable_schema_bundle" "name" {
  schema_bundle_id = string (Required)
  id = string (Optional, Computed)
  ignore_warnings = bool (Optional)
  instance = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  table = string (Optional)

  proto_schema block "list" (Required) {
    proto_descriptors = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
