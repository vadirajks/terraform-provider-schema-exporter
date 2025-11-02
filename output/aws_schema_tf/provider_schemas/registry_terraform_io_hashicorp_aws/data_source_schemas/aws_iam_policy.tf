data "aws_iam_policy" "name" {
  arn = string (Optional, Computed)
  attachment_count = number (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  path = string (Computed)
  path_prefix = string (Optional)
  policy = string (Computed)
  policy_id = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
