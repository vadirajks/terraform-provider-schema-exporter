resource "aws_iam_role_policy_attachments_exclusive" "name" {
  policy_arns = ['set', 'string'] (Required)
  role_name = string (Required)
}
