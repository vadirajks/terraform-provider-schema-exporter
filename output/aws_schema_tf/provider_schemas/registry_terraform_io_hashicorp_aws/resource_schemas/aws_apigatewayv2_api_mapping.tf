resource "aws_apigatewayv2_api_mapping" "name" {
  api_id = string (Required)
  domain_name = string (Required)
  stage = string (Required)
  api_mapping_key = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
