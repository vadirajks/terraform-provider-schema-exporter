resource "aws_iam_group_membership" "name" {
  group = string (Required)
  name = string (Required)
  users = ['set', 'string'] (Required)
  id = string (Optional, Computed)
}
