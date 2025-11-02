data "google_bigtable_table_iam_policy" "name" {
  instance_name = string (Required)
  table = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
