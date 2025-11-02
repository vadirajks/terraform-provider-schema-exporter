resource "google_kms_crypto_key_iam_policy" "name" {
  crypto_key_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
