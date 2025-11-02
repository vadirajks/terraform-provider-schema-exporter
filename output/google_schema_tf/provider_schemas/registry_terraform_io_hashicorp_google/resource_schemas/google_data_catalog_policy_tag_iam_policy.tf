resource "google_data_catalog_policy_tag_iam_policy" "name" {
  policy_data = string (Required)
  policy_tag = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
