resource "aws_iam_role_policy_attachment" "name" {
  policy_arn = string (Required)
  role = string (Required)
  id = string (Optional, Computed)
}
