resource "aws_iam_group_policies_exclusive" "name" {
  group_name = string (Required)
  policy_names = ['set', 'string'] (Required)
}
