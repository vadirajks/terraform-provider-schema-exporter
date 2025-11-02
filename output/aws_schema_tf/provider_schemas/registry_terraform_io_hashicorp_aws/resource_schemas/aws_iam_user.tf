resource "aws_iam_user" "name" {
  name = string (Required)
  arn = string (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  path = string (Optional)
  permissions_boundary = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  unique_id = string (Computed)
}
