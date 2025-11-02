resource "aws_api_gateway_authorizer" "name" {
  name = string (Required)
  rest_api_id = string (Required)
  arn = string (Computed)
  authorizer_credentials = string (Optional)
  authorizer_result_ttl_in_seconds = number (Optional)
  authorizer_uri = string (Optional)
  id = string (Optional, Computed)
  identity_source = string (Optional)
  identity_validation_expression = string (Optional)
  provider_arns = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  type = string (Optional)
}
