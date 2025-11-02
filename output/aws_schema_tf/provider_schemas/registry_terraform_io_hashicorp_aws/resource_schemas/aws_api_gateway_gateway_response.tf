resource "aws_api_gateway_gateway_response" "name" {
  response_type = string (Required)
  rest_api_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  response_parameters = ['map', 'string'] (Optional)
  response_templates = ['map', 'string'] (Optional)
  status_code = string (Optional)
}
