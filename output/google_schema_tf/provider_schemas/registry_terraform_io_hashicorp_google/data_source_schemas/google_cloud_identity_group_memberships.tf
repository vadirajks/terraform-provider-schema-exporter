data "google_cloud_identity_group_memberships" "name" {
  group = string (Required)
  id = string (Optional, Computed)
  memberships = ['list', ['object', {'create_ignore_already_exists': 'bool', 'create_time': 'string', 'group': 'string', 'name': 'string', 'preferred_member_key': ['list', ['object', {'id': 'string', 'namespace': 'string'}]], 'roles': ['set', ['object', {'expiry_detail': ['list', ['object', {'expire_time': 'string'}]], 'name': 'string'}]], 'type': 'string', 'update_time': 'string'}]] (Computed)
}
