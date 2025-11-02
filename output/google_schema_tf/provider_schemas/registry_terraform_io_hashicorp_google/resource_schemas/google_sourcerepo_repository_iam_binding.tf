resource "google_sourcerepo_repository_iam_binding" "name" {
  members = ['set', 'string'] (Required)
  repository = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
