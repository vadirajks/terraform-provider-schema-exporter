resource "aws_apigatewayv2_vpc_link" "name" {
  name = string (Required)
  security_group_ids = ['set', 'string'] (Required)
  subnet_ids = ['set', 'string'] (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
