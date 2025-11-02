data "google_tags_tag_key_iam_policy" "name" {
  tag_key = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
