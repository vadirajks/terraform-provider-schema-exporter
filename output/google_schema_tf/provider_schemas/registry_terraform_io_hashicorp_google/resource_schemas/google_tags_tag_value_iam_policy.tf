resource "google_tags_tag_value_iam_policy" "name" {
  policy_data = string (Required)
  tag_value = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
