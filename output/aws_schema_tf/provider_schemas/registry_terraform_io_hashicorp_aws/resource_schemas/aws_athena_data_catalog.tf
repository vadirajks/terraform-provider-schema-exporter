resource "aws_athena_data_catalog" "name" {
  description = string (Required)
  name = string (Required)
  parameters = ['map', 'string'] (Required)
  type = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
