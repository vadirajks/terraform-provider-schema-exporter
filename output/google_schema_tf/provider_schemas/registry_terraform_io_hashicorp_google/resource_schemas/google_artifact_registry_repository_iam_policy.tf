resource "google_artifact_registry_repository_iam_policy" "name" {
  policy_data = string (Required)
  repository = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
