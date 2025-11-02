resource "google_iap_web_type_app_engine_iam_policy" "name" {
  app_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
