resource "google_data_catalog_policy_tag_iam_member" "name" {
  member = string (Required)
  policy_tag = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
