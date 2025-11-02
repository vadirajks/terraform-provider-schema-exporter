resource "aws_iam_role_policy" "name" {
  policy = string (Required)
  role = string (Required)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
}
