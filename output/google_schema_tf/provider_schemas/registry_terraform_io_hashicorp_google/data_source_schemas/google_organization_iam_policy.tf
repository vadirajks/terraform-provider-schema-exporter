data "google_organization_iam_policy" "name" {
  org_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
