data "google_cloud_identity_groups" "name" {
  parent = string (Required)
  groups = ['list', ['object', {'additional_group_keys': ['list', ['object', {'id': 'string', 'namespace': 'string'}]], 'create_time': 'string', 'description': 'string', 'display_name': 'string', 'group_key': ['list', ['object', {'id': 'string', 'namespace': 'string'}]], 'initial_group_config': 'string', 'labels': ['map', 'string'], 'name': 'string', 'parent': 'string', 'update_time': 'string'}]] (Computed)
  id = string (Optional, Computed)
}
