data "google_dns_keys" "name" {
  managed_zone = string (Required)
  id = string (Optional, Computed)
  key_signing_keys = ['list', ['object', {'algorithm': 'string', 'creation_time': 'string', 'description': 'string', 'digests': ['list', ['object', {'digest': 'string', 'type': 'string'}]], 'ds_record': 'string', 'id': 'string', 'is_active': 'bool', 'key_length': 'number', 'key_tag': 'number', 'public_key': 'string'}]] (Computed)
  project = string (Optional, Computed)
  zone_signing_keys = ['list', ['object', {'algorithm': 'string', 'creation_time': 'string', 'description': 'string', 'digests': ['list', ['object', {'digest': 'string', 'type': 'string'}]], 'id': 'string', 'is_active': 'bool', 'key_length': 'number', 'key_tag': 'number', 'public_key': 'string'}]] (Computed)
}
