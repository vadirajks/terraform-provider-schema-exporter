resource "google_sourcerepo_repository_iam_policy" "name" {
  policy_data = string (Required)
  repository = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
