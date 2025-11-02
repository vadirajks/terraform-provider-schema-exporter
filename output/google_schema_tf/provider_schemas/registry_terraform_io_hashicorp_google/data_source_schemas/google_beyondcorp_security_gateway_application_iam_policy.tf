data "google_beyondcorp_security_gateway_application_iam_policy" "name" {
  application_id = string (Required)
  security_gateway_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
