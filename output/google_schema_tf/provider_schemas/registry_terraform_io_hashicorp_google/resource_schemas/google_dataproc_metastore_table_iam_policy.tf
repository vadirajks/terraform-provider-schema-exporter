resource "google_dataproc_metastore_table_iam_policy" "name" {
  database_id = string (Required)
  policy_data = string (Required)
  service_id = string (Required)
  table = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
