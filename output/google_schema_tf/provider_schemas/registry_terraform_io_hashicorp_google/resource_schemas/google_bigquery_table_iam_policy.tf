resource "google_bigquery_table_iam_policy" "name" {
  dataset_id = string (Required)
  policy_data = string (Required)
  table_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
