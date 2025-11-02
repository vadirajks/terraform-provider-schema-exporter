resource "google_kms_secret_ciphertext" "name" {
  crypto_key = string (Required)
  plaintext = string (Required)
  additional_authenticated_data = string (Optional)
  ciphertext = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
