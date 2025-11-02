data "aws_iam_user" "name" {
  user_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  path = string (Computed)
  permissions_boundary = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  user_id = string (Computed)
}
