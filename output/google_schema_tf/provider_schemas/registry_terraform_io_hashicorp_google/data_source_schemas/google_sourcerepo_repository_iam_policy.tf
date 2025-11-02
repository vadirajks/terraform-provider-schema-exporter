data "google_sourcerepo_repository_iam_policy" "name" {
  repository = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
