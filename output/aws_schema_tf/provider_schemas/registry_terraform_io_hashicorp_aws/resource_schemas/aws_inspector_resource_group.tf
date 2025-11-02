resource "aws_inspector_resource_group" "name" {
  tags = ['map', 'string'] (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
