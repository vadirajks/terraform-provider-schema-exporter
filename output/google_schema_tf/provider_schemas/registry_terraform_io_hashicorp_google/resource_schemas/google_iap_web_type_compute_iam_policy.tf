resource "google_iap_web_type_compute_iam_policy" "name" {
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
