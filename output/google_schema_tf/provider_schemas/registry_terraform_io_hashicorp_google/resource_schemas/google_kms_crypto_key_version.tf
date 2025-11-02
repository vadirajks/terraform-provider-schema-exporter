resource "google_kms_crypto_key_version" "name" {
  crypto_key = string (Required)
  algorithm = string (Computed)
  attestation = ['list', ['object', {'cert_chains': ['list', ['object', {'cavium_certs': ['list', 'string'], 'google_card_certs': ['list', 'string'], 'google_partition_certs': ['list', 'string']}]], 'content': 'string', 'external_protection_level_options': ['list', ['object', {'ekm_connection_key_path': 'string', 'external_key_uri': 'string'}]], 'format': 'string'}]] (Computed)
  generate_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  protection_level = string (Computed)
  state = string (Optional, Computed)

  external_protection_level_options block "list" (Optional) {
    ekm_connection_key_path = string (Optional)
    external_key_uri = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
