resource "aws_api_gateway_method_response" "name" {
  http_method = string (Required)
  resource_id = string (Required)
  rest_api_id = string (Required)
  status_code = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  response_models = ['map', 'string'] (Optional)
  response_parameters = ['map', 'bool'] (Optional)
}
