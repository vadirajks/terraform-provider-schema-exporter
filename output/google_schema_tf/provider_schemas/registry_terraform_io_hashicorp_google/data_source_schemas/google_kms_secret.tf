data "google_kms_secret" "name" {
  ciphertext = string (Required)
  crypto_key = string (Required)
  additional_authenticated_data = string (Optional)
  id = string (Optional, Computed)
  plaintext = string (Computed)
}
