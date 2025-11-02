resource "aws_iam_group_policy_attachment" "name" {
  group = string (Required)
  policy_arn = string (Required)
  id = string (Optional, Computed)
}
