resource "google_endpoints_service_iam_policy" "name" {
  policy_data = string (Required)
  service_name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
