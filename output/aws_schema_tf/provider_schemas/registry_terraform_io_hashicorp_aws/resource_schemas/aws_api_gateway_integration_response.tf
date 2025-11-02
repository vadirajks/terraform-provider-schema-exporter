resource "aws_api_gateway_integration_response" "name" {
  http_method = string (Required)
  resource_id = string (Required)
  rest_api_id = string (Required)
  status_code = string (Required)
  content_handling = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  response_parameters = ['map', 'string'] (Optional)
  response_templates = ['map', 'string'] (Optional)
  selection_pattern = string (Optional)
}
