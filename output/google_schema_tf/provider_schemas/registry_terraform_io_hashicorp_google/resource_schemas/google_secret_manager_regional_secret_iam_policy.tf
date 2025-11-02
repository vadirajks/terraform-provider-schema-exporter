resource "google_secret_manager_regional_secret_iam_policy" "name" {
  policy_data = string (Required)
  secret_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
