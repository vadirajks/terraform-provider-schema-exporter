resource "google_bigquery_dataset_iam_policy" "name" {
  dataset_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
