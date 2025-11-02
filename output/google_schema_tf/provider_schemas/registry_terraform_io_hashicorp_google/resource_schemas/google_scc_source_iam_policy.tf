resource "google_scc_source_iam_policy" "name" {
  organization = string (Required)
  policy_data = string (Required)
  source = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
