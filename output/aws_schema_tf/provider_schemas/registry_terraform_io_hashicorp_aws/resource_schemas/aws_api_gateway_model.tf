resource "aws_api_gateway_model" "name" {
  content_type = string (Required)
  name = string (Required)
  rest_api_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  schema = string (Optional)
}
