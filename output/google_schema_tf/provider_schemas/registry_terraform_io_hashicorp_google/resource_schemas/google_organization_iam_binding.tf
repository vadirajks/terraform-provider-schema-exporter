resource "google_organization_iam_binding" "name" {
  members = ['set', 'string'] (Required)
  org_id = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
