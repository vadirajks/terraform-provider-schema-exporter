data "google_service_account_iam_policy" "name" {
  service_account_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
