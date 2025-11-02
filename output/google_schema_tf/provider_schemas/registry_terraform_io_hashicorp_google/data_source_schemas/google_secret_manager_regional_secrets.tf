data "google_secret_manager_regional_secrets" "name" {
  location = string (Required)
  filter = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  secrets = ['list', ['object', {'annotations': ['map', 'string'], 'create_time': 'string', 'customer_managed_encryption': ['list', ['object', {'kms_key_name': 'string'}]], 'deletion_protection': 'bool', 'effective_annotations': ['map', 'string'], 'effective_labels': ['map', 'string'], 'expire_time': 'string', 'labels': ['map', 'string'], 'location': 'string', 'name': 'string', 'project': 'string', 'rotation': ['list', ['object', {'next_rotation_time': 'string', 'rotation_period': 'string'}]], 'secret_id': 'string', 'tags': ['map', 'string'], 'terraform_labels': ['map', 'string'], 'topics': ['list', ['object', {'name': 'string'}]], 'ttl': 'string', 'version_aliases': ['map', 'string'], 'version_destroy_ttl': 'string'}]] (Computed)
}
