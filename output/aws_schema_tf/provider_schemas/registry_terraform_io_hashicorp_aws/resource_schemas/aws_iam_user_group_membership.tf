resource "aws_iam_user_group_membership" "name" {
  groups = ['set', 'string'] (Required)
  user = string (Required)
  id = string (Optional, Computed)
}
