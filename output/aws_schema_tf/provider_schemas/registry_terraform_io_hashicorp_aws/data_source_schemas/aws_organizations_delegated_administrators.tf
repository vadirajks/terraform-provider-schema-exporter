data "aws_organizations_delegated_administrators" "name" {
  delegated_administrators = ['set', ['object', {'arn': 'string', 'delegation_enabled_date': 'string', 'email': 'string', 'id': 'string', 'joined_method': 'string', 'joined_timestamp': 'string', 'name': 'string', 'status': 'string'}]] (Computed)
  id = string (Optional, Computed)
  service_principal = string (Optional)
}
