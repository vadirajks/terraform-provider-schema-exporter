resource "aws_api_gateway_rest_api_policy" "name" {
  policy = string (Required)
  rest_api_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
