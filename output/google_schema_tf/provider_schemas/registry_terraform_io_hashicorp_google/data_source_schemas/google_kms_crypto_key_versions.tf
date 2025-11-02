data "google_kms_crypto_key_versions" "name" {
  crypto_key = string (Required)
  filter = string (Optional)
  id = string (Optional, Computed)
  public_key = ['list', ['object', {'algorithm': 'string', 'pem': 'string'}]] (Computed)
  versions = ['list', ['object', {'algorithm': 'string', 'crypto_key': 'string', 'id': 'string', 'name': 'string', 'protection_level': 'string', 'public_key': ['list', ['object', {'algorithm': 'string', 'pem': 'string'}]], 'state': 'string', 'version': 'number'}]] (Computed)
}
