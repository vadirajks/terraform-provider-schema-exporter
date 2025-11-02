resource "google_iap_app_engine_version_iam_member" "name" {
  app_id = string (Required)
  member = string (Required)
  role = string (Required)
  service = string (Required)
  version_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
