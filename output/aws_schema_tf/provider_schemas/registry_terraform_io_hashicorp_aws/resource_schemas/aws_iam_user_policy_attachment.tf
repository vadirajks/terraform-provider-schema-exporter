resource "aws_iam_user_policy_attachment" "name" {
  policy_arn = string (Required)
  user = string (Required)
  id = string (Optional, Computed)
}
