resource "google_secure_source_manager_repository_iam_policy" "name" {
  policy_data = string (Required)
  repository_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
