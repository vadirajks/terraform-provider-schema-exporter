resource "google_bigtable_table_iam_policy" "name" {
  instance_name = string (Required)
  policy_data = string (Required)
  table = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
