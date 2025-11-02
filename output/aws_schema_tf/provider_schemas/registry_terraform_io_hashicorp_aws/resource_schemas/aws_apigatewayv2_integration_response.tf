resource "aws_apigatewayv2_integration_response" "name" {
  api_id = string (Required)
  integration_id = string (Required)
  integration_response_key = string (Required)
  content_handling_strategy = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  response_templates = ['map', 'string'] (Optional)
  template_selection_expression = string (Optional)
}
