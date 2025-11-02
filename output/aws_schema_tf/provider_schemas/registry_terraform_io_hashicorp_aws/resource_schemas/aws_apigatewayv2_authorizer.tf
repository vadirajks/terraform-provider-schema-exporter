resource "aws_apigatewayv2_authorizer" "name" {
  api_id = string (Required)
  authorizer_type = string (Required)
  name = string (Required)
  authorizer_credentials_arn = string (Optional)
  authorizer_payload_format_version = string (Optional)
  authorizer_result_ttl_in_seconds = number (Optional, Computed)
  authorizer_uri = string (Optional)
  enable_simple_responses = bool (Optional)
  id = string (Optional, Computed)
  identity_sources = ['set', 'string'] (Optional)
  region = string (Optional, Computed)

  jwt_configuration block "list" (Optional) {
    audience = ['set', 'string'] (Optional)
    issuer = string (Optional)
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
