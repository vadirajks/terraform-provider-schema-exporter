data "google_iap_web_backend_service_iam_policy" "name" {
  web_backend_service = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
