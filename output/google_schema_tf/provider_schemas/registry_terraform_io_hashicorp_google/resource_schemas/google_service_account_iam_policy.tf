resource "google_service_account_iam_policy" "name" {
  policy_data = string (Required)
  service_account_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
