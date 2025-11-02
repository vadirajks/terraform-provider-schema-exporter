resource "aws_iam_instance_profile" "name" {
  arn = string (Computed)
  create_date = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  path = string (Optional)
  role = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  unique_id = string (Computed)
}
