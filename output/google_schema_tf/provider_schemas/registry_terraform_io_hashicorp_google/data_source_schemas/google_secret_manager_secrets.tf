data "google_secret_manager_secrets" "name" {
  filter = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  secrets = ['list', ['object', {'annotations': ['map', 'string'], 'create_time': 'string', 'deletion_protection': 'bool', 'effective_annotations': ['map', 'string'], 'effective_labels': ['map', 'string'], 'expire_time': 'string', 'labels': ['map', 'string'], 'name': 'string', 'project': 'string', 'replication': ['list', ['object', {'auto': ['list', ['object', {'customer_managed_encryption': ['list', ['object', {'kms_key_name': 'string'}]]}]], 'user_managed': ['list', ['object', {'replicas': ['list', ['object', {'customer_managed_encryption': ['list', ['object', {'kms_key_name': 'string'}]], 'location': 'string'}]]}]]}]], 'rotation': ['list', ['object', {'next_rotation_time': 'string', 'rotation_period': 'string'}]], 'secret_id': 'string', 'tags': ['map', 'string'], 'terraform_labels': ['map', 'string'], 'topics': ['list', ['object', {'name': 'string'}]], 'ttl': 'string', 'version_aliases': ['map', 'string'], 'version_destroy_ttl': 'string'}]] (Computed)
}
