resource "aws_iam_user_policies_exclusive" "name" {
  policy_names = ['set', 'string'] (Required)
  user_name = string (Required)
}
