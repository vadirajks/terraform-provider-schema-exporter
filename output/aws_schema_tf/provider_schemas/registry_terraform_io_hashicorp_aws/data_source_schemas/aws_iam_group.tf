data "aws_iam_group" "name" {
  group_name = string (Required)
  arn = string (Computed)
  group_id = string (Computed)
  id = string (Optional, Computed)
  path = string (Computed)
  users = ['list', ['object', {'arn': 'string', 'path': 'string', 'user_id': 'string', 'user_name': 'string'}]] (Computed)
}
