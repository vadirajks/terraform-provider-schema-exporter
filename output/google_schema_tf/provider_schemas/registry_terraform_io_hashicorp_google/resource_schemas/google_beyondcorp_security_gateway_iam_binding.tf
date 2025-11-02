resource "google_beyondcorp_security_gateway_iam_binding" "name" {
  members = ['set', 'string'] (Required)
  role = string (Required)
  security_gateway_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
