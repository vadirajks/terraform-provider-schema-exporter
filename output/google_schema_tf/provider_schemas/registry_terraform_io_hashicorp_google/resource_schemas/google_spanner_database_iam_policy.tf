resource "google_spanner_database_iam_policy" "name" {
  database = string (Required)
  instance = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
