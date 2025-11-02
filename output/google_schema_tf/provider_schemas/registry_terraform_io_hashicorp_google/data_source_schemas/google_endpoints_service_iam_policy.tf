data "google_endpoints_service_iam_policy" "name" {
  service_name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
