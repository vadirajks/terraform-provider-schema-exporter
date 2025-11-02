resource "google_data_catalog_taxonomy_iam_member" "name" {
  member = string (Required)
  role = string (Required)
  taxonomy = string (Required)
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
