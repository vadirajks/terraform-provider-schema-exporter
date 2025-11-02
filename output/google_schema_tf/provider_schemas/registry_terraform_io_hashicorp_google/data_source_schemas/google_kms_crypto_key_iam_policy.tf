data "google_kms_crypto_key_iam_policy" "name" {
  crypto_key_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
