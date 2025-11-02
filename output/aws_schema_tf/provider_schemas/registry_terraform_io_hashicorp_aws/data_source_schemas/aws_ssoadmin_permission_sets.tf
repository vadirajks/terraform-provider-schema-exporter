data "aws_ssoadmin_permission_sets" "name" {
  instance_arn = string (Required)
  arns = ['list', 'string'] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
