data "google_bigquery_datapolicyv2_data_policy_iam_policy" "name" {
  data_policy_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
