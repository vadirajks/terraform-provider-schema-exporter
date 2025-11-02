resource "aws_iam_group_policy" "name" {
  group = string (Required)
  policy = string (Required)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
}
