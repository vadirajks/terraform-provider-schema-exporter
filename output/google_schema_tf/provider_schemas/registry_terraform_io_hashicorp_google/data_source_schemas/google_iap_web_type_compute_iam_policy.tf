data "google_iap_web_type_compute_iam_policy" "name" {
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
