resource "google_dataproc_metastore_table_iam_member" "name" {
  database_id = string (Required)
  member = string (Required)
  role = string (Required)
  service_id = string (Required)
  table = string (Required)
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
