data "aws_iam_role" "name" {
  name = string (Required)
  arn = string (Computed)
  assume_role_policy = string (Computed)
  create_date = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  max_session_duration = number (Computed)
  path = string (Computed)
  permissions_boundary = string (Computed)
  role_last_used = ['list', ['object', {'last_used_date': 'string', 'region': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  unique_id = string (Computed)
}
