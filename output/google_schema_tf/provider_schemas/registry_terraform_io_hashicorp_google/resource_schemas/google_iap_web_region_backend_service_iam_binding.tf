resource "google_iap_web_region_backend_service_iam_binding" "name" {
  members = ['set', 'string'] (Required)
  role = string (Required)
  web_region_backend_service = string (Required)
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
