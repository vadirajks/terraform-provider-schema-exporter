data "google_data_catalog_tag_template_iam_policy" "name" {
  tag_template = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
