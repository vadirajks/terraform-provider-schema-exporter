resource "aws_apigatewayv2_deployment" "name" {
  api_id = string (Required)
  auto_deployed = bool (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  triggers = ['map', 'string'] (Optional)
}
