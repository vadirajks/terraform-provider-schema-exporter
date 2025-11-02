resource "aws_iam_group_policy_attachments_exclusive" "name" {
  group_name = string (Required)
  policy_arns = ['set', 'string'] (Required)
}
