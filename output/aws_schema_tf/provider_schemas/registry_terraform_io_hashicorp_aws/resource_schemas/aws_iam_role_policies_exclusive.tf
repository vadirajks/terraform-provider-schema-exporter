resource "aws_iam_role_policies_exclusive" "name" {
  policy_names = ['set', 'string'] (Required)
  role_name = string (Required)
}
