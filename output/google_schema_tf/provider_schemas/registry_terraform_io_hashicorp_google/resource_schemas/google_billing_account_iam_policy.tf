resource "google_billing_account_iam_policy" "name" {
  billing_account_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
