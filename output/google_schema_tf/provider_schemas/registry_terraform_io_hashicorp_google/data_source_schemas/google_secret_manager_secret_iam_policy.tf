data "google_secret_manager_secret_iam_policy" "name" {
  secret_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
