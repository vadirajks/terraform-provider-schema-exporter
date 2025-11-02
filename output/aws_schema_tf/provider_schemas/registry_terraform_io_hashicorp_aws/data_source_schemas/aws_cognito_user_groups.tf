data "aws_cognito_user_groups" "name" {
  user_pool_id = string (Required)
  groups = ['list', ['object', {'description': 'string', 'group_name': 'string', 'precedence': 'number', 'role_arn': 'string'}]] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
