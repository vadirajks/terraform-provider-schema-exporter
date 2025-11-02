resource "aws_iam_group" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  path = string (Optional)
  unique_id = string (Computed)
}
