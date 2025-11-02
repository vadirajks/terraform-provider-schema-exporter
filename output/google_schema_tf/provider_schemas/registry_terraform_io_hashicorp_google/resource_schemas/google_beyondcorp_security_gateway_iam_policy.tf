resource "google_beyondcorp_security_gateway_iam_policy" "name" {
  policy_data = string (Required)
  security_gateway_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
