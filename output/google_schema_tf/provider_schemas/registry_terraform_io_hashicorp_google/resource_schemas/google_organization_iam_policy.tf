resource "google_organization_iam_policy" "name" {
  org_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
