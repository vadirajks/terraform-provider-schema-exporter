resource "google_gke_hub_scope_iam_binding" "name" {
  members = ['set', 'string'] (Required)
  role = string (Required)
  scope_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
