resource "aws_organizations_organization" "name" {
  accounts = ['list', ['object', {'arn': 'string', 'email': 'string', 'id': 'string', 'joined_method': 'string', 'joined_timestamp': 'string', 'name': 'string', 'state': 'string', 'status': 'string'}]] (Computed)
  arn = string (Computed)
  aws_service_access_principals = ['set', 'string'] (Optional)
  enabled_policy_types = ['set', 'string'] (Optional)
  feature_set = string (Optional)
  id = string (Optional, Computed)
  master_account_arn = string (Computed)
  master_account_email = string (Computed)
  master_account_id = string (Computed)
  master_account_name = string (Computed)
  non_master_accounts = ['list', ['object', {'arn': 'string', 'email': 'string', 'id': 'string', 'joined_method': 'string', 'joined_timestamp': 'string', 'name': 'string', 'state': 'string', 'status': 'string'}]] (Computed)
  roots = ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string', 'policy_types': ['list', ['object', {'status': 'string', 'type': 'string'}]]}]] (Computed)
}
