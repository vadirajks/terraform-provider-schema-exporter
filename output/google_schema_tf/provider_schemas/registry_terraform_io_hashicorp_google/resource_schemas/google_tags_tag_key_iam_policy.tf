resource "google_tags_tag_key_iam_policy" "name" {
  policy_data = string (Required)
  tag_key = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
