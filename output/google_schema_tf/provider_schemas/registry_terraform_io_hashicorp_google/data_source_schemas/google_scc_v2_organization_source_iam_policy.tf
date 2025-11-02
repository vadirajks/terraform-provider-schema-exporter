data "google_scc_v2_organization_source_iam_policy" "name" {
  organization = string (Required)
  source = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
