resource "aws_iam_policy" "name" {
  policy = string (Required)
  arn = string (Computed)
  attachment_count = number (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  path = string (Optional)
  policy_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
