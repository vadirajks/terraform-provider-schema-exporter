resource "google_scc_source_iam_binding" "name" {
  members = ['set', 'string'] (Required)
  organization = string (Required)
  role = string (Required)
  source = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
