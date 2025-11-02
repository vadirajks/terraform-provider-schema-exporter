data "aws_iam_instance_profiles" "name" {
  role_name = string (Required)
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  names = ['set', 'string'] (Computed)
  paths = ['set', 'string'] (Computed)
}
