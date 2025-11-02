data "google_iap_app_engine_version_iam_policy" "name" {
  app_id = string (Required)
  service = string (Required)
  version_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
