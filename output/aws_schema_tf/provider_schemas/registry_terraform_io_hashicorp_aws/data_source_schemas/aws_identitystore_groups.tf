data "aws_identitystore_groups" "name" {
  identity_store_id = string (Required)
  groups = ['list', ['object', {'description': 'string', 'display_name': 'string', 'external_ids': ['list', ['object', {'id': 'string', 'issuer': 'string'}]], 'group_id': 'string', 'identity_store_id': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
