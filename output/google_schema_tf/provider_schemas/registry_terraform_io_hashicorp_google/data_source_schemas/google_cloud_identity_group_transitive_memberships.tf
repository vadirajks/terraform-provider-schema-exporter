data "google_cloud_identity_group_transitive_memberships" "name" {
  group = string (Required)
  id = string (Optional, Computed)
  memberships = ['list', ['object', {'member': 'string', 'preferred_member_key': ['list', ['object', {'id': 'string', 'namespace': 'string'}]], 'relation_type': 'string', 'roles': ['set', ['object', {'role': 'string'}]]}]] (Computed)
}
