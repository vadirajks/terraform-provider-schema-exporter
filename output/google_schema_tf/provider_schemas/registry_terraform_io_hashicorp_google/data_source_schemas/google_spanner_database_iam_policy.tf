data "google_spanner_database_iam_policy" "name" {
  database = string (Required)
  instance = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
