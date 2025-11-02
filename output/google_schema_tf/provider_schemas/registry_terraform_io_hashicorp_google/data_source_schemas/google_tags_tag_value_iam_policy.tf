data "google_tags_tag_value_iam_policy" "name" {
  tag_value = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
