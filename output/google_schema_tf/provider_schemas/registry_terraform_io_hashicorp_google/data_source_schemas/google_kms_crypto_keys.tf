data "google_kms_crypto_keys" "name" {
  key_ring = string (Required)
  filter = string (Optional)
  id = string (Optional, Computed)
  keys = ['list', ['object', {'crypto_key_backend': 'string', 'destroy_scheduled_duration': 'string', 'effective_labels': ['map', 'string'], 'id': 'string', 'import_only': 'bool', 'key_ring': 'string', 'labels': ['map', 'string'], 'name': 'string', 'primary': ['list', ['object', {'name': 'string', 'state': 'string'}]], 'purpose': 'string', 'rotation_period': 'string', 'skip_initial_version_creation': 'bool', 'terraform_labels': ['map', 'string'], 'version_template': ['list', ['object', {'algorithm': 'string', 'protection_level': 'string'}]]}]] (Computed)
}
