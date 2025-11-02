resource "google_managed_kafka_acl" "name" {
  acl_id = string (Required)
  cluster = string (Required)
  location = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  pattern_type = string (Computed)
  project = string (Optional, Computed)
  resource_name = string (Computed)
  resource_type = string (Computed)

  acl_entries block "set" (Required) {
    operation = string (Required)
    principal = string (Required)
    host = string (Optional)
    permission_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
