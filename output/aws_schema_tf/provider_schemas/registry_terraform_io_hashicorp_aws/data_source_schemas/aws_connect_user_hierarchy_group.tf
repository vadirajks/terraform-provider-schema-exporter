data "aws_connect_user_hierarchy_group" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  hierarchy_group_id = string (Optional, Computed)
  hierarchy_path = ['list', ['object', {'level_five': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]], 'level_four': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]], 'level_one': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]], 'level_three': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]], 'level_two': ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  level_id = string (Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
