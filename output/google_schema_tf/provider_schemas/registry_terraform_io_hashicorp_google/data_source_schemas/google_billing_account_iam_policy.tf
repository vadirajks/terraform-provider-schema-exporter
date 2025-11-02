data "google_billing_account_iam_policy" "name" {
  billing_account_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
