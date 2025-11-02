resource "google_bigquery_datapolicyv2_data_policy_iam_policy" "name" {
  data_policy_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
