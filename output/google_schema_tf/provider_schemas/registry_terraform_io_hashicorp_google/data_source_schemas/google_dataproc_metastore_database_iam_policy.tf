data "google_dataproc_metastore_database_iam_policy" "name" {
  database = string (Required)
  service_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
