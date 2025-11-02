data "aws_identitystore_group_memberships" "name" {
  group_id = string (Required)
  identity_store_id = string (Required)
  group_memberships = ['list', ['object', {'group_id': 'string', 'identity_store_id': 'string', 'member_id': ['object', {'user_id': 'string'}], 'membership_id': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
