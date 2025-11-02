resource "google_project_iam_policy" "name" {
  policy_data = string (Required)
  project = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
