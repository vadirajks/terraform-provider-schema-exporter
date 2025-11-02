data "aws_iam_roles" "name" {
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  name_regex = string (Optional)
  names = ['set', 'string'] (Computed)
  path_prefix = string (Optional)
}
