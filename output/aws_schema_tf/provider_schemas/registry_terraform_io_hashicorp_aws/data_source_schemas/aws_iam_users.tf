data "aws_iam_users" "name" {
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  name_regex = string (Optional)
  names = ['set', 'string'] (Computed)
  path_prefix = string (Optional)
}
