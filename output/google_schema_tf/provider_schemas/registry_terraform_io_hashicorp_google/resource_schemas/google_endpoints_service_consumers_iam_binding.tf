resource "google_endpoints_service_consumers_iam_binding" "name" {
  consumer_project = string (Required)
  members = ['set', 'string'] (Required)
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
