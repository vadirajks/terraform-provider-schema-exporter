resource "google_iap_web_cloud_run_service_iam_policy" "name" {
  cloud_run_service_name = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
