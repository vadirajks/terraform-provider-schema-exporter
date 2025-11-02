data "aws_api_gateway_authorizers" "name" {
  rest_api_id = string (Required)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
}
