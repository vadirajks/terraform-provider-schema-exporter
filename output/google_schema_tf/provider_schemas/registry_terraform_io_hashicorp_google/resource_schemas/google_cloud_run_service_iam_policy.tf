resource "google_cloud_run_service_iam_policy" "name" {
  policy_data = string (Required)
  service = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
