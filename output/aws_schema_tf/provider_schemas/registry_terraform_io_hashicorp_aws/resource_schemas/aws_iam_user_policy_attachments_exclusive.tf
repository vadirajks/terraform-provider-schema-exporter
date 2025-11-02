resource "aws_iam_user_policy_attachments_exclusive" "name" {
  policy_arns = ['set', 'string'] (Required)
  user_name = string (Required)
}
