resource "aws_iam_user_policy" "name" {
  policy = string (Required)
  user = string (Required)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
}
