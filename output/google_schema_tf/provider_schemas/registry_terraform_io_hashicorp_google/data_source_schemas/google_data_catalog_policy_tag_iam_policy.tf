data "google_data_catalog_policy_tag_iam_policy" "name" {
  policy_tag = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
