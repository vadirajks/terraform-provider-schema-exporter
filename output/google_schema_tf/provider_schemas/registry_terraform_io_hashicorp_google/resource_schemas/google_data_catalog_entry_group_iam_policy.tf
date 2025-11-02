resource "google_data_catalog_entry_group_iam_policy" "name" {
  entry_group = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
