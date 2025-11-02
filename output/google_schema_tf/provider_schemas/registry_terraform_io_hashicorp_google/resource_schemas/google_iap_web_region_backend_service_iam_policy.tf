resource "google_iap_web_region_backend_service_iam_policy" "name" {
  policy_data = string (Required)
  web_region_backend_service = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
