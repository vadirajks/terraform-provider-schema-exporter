data "google_bigquery_table_iam_policy" "name" {
  dataset_id = string (Required)
  table_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
