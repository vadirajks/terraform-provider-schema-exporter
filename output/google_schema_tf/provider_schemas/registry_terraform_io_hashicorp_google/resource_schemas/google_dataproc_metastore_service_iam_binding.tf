resource "google_dataproc_metastore_service_iam_binding" "name" {
  members = ['set', 'string'] (Required)
  role = string (Required)
  service_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
