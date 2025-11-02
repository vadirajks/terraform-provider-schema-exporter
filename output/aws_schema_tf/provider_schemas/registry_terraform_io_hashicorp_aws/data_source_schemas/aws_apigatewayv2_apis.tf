data "aws_apigatewayv2_apis" "name" {
  id = string (Optional, Computed)
  ids = ['set', 'string'] (Computed)
  name = string (Optional)
  protocol_type = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
}
