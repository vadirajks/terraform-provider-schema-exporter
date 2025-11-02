data "aws_organizations_organizational_unit_child_accounts" "name" {
  parent_id = string (Required)
  accounts = ['list', ['object', {'arn': 'string', 'email': 'string', 'id': 'string', 'joined_method': 'string', 'joined_timestamp': 'string', 'name': 'string', 'state': 'string', 'status': 'string'}]] (Computed)
  id = string (Optional, Computed)
}
