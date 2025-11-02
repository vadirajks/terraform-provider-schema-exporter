resource "aws_api_gateway_vpc_link" "name" {
  name = string (Required)
  target_arns = ['list', 'string'] (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
