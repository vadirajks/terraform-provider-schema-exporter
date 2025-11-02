resource "google_beyondcorp_security_gateway_application_iam_member" "name" {
  application_id = string (Required)
  member = string (Required)
  role = string (Required)
  security_gateway_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
