resource "google_data_catalog_tag_template_iam_policy" "name" {
  policy_data = string (Required)
  tag_template = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
