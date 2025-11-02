data "aws_iam_instance_profile" "name" {
  name = string (Required)
  arn = string (Computed)
  create_date = string (Computed)
  id = string (Optional, Computed)
  path = string (Computed)
  role_arn = string (Computed)
  role_id = string (Computed)
  role_name = string (Computed)
}
