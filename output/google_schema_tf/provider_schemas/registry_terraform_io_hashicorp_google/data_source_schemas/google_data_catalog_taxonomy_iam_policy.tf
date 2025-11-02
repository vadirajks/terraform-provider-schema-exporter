data "google_data_catalog_taxonomy_iam_policy" "name" {
  taxonomy = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
