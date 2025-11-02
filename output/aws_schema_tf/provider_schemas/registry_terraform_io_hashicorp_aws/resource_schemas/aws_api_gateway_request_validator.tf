resource "aws_api_gateway_request_validator" "name" {
  name = string (Required)
  rest_api_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  validate_request_body = bool (Optional)
  validate_request_parameters = bool (Optional)
}
