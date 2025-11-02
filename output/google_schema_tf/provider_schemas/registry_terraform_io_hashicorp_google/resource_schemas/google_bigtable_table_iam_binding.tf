resource "google_bigtable_table_iam_binding" "name" {
  instance_name = string (Required)
  members = ['set', 'string'] (Required)
  role = string (Required)
  table = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
