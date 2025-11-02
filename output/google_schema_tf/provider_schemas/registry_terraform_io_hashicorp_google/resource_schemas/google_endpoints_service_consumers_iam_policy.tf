resource "google_endpoints_service_consumers_iam_policy" "name" {
  consumer_project = string (Required)
  policy_data = string (Required)
  service_name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
