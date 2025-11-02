resource "aws_iam_service_linked_role" "name" {
  aws_service_name = string (Required)
  arn = string (Computed)
  create_date = string (Computed)
  custom_suffix = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  path = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  unique_id = string (Computed)
}
