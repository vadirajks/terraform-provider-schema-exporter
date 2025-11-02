resource "aws_iam_policy_attachment" "name" {
  name = string (Required)
  policy_arn = string (Required)
  groups = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  roles = ['set', 'string'] (Optional)
  users = ['set', 'string'] (Optional)
}
