resource "google_endpoints_service_iam_member" "name" {
  member = string (Required)
  role = string (Required)
  service_name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
