data "aws_connect_user_hierarchy_structure" "name" {
  instance_id = string (Required)
  hierarchy_structure = ['list', ['object', {'level_five': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]], 'level_four': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]], 'level_one': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]], 'level_three': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]], 'level_two': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
