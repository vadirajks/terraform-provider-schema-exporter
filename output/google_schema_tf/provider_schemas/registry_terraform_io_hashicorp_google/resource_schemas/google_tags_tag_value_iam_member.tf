resource "google_tags_tag_value_iam_member" "name" {
  member = string (Required)
  role = string (Required)
  tag_value = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
