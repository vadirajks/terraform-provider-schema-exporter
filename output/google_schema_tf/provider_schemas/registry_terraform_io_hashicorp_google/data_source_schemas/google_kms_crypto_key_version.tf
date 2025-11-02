data "google_kms_crypto_key_version" "name" {
  crypto_key = string (Required)
  algorithm = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  protection_level = string (Computed)
  public_key = ['list', ['object', {'algorithm': 'string', 'pem': 'string'}]] (Computed)
  state = string (Computed)
  version = number (Optional)
}
