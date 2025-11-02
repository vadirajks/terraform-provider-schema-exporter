resource "google_data_catalog_taxonomy_iam_policy" "name" {
  policy_data = string (Required)
  taxonomy = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
