data "google_kms_secret_ciphertext" "name" {
  crypto_key = string (Required)
  plaintext = string (Required)
  ciphertext = string (Computed)
  id = string (Optional, Computed)
}
