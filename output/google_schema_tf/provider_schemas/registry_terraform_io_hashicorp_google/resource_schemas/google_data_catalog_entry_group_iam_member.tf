resource "google_data_catalog_entry_group_iam_member" "name" {
  entry_group = string (Required)
  member = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
