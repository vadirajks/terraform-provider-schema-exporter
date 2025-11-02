data "google_beyondcorp_security_gateway_iam_policy" "name" {
  security_gateway_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
