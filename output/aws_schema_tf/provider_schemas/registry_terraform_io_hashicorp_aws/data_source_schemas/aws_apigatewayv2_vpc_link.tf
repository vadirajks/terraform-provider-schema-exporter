data "aws_apigatewayv2_vpc_link" "name" {
  vpc_link_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Computed)
  subnet_ids = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
